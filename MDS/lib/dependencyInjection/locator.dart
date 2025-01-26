import 'package:fmi_core/fmi_core.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:poc/models/app_state_manager.dart';
import 'package:poc/repository/implementations/mock_attachment_repository_imp.dart';
import 'package:poc/repository/implementations/mock_connected_asset_repository_impl.dart';
import 'package:poc/repository/implementations/mock_employee_online_repository_impl.dart';
import 'package:poc/repository/implementations/mock_employee_repository_impl.dart';
import 'package:poc/repository/implementations/mock_generic_repository_impl.dart';
import 'package:poc/services/implementations/navigation_service_impl.dart';
import 'package:poc/services/interfaces/navigation_service.dart';

final GetIt serviceLocator = GetIt.instance;
Future setupServiceLocator(Isar isar) async {
  // Setup Core
  await CoreInit.init(
    serviceLocator,
    MockEmployeeRepositoryImpl(),
    MockAttachmentRepositoryImpl(),
    isar,
    MockConnectedAssetRepositoryImpl(),
    MockEmployeeOnlineRepositoryImpl(),
    MockGenericRepositoryImpl(),
    "976d09de-38ba-4be4-be95-c32a49af9db8",
    ""
  );

  serviceLocator
      .registerLazySingleton<NavigationService>(() => NavigationServiceImpl());
  serviceLocator.registerSingleton(AppStateManager());
}
