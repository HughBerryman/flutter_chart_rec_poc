import 'dart:io';

import 'package:azure_ad_authentication/azure_ad_authentication.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:poc/dependencyInjection/locator.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/routing/app_route_parser.dart';
import 'package:provider/provider.dart';
import 'package:poc/routing/app_router.dart';
import 'package:fmi_core/fmi_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Directory? applicationDocumentsDirectory;

  if (!kIsWeb) {
    applicationDocumentsDirectory = await getApplicationDocumentsDirectory();
  }

  List<CollectionSchema> isarCollections = [];
  isarCollections.addAll(CoreConfiguration.isarSchemas);

  Isar isar = await CoreInit.isarInit(
      collectionSchemas: isarCollections,
      applicationDocumentsDirectoryPath: applicationDocumentsDirectory?.path,
      enableInspector: false);

  // Setup Dependency Injection
  setupServiceLocator(isar);

  // Authenticate User
  final AzureAdAuthentication _auth = GetIt.instance<AzureAdAuthentication>();

  await _auth.initialize();
  await _auth.acquireToken(scopes: []);

  // Run application
  runApp(const FlutterMdsPoc());
}

class FlutterMdsPoc extends StatefulWidget {
  const FlutterMdsPoc({Key? key}) : super(key: key);

  @override
  State<FlutterMdsPoc> createState() => _FlutterMdsPocState();
}

class _FlutterMdsPocState extends State<FlutterMdsPoc> {
  final _appStateManager = GetIt.instance.get<AppStateManager>();
  final _searchDialogProvider = GetIt.instance.get<SearchDialogProvider>();

  final _scaffoldMessengerStateKey = GlobalKey<ScaffoldMessengerState>();
  final routeParser = AppRouteParser();
  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(appStateManager: _appStateManager);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    GetIt.instance
        .get<InternetConnectivityProvider>()
        .enableToastMessaging(_scaffoldMessengerStateKey);

    GetIt.instance
        .get<SnackBarService>()
        .initialize(_scaffoldMessengerStateKey);

    GetIt.instance.get<SyncToastService>().initialize();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _appStateManager),
        ChangeNotifierProvider(create: (context) => _searchDialogProvider)
      ],
      child: MaterialApp.router(
        scaffoldMessengerKey: _scaffoldMessengerStateKey,
        debugShowCheckedModeBanner: false,
        title: 'MDS',
        backButtonDispatcher: RootBackButtonDispatcher(),
        routeInformationParser: routeParser,
        routerDelegate: _appRouter,
        theme: FmiThemeLight.fmiThemeDataLight,
        darkTheme: FmiThemeDark.fmiThemeDataDark,
      ),
    );
  }
}
