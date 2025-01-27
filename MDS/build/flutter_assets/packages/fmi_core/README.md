The fmi_core package contains components and architectural concepts that are reuseable among a wide scope of projects. This includes design tokens, widgets, services, repository interfaces, helpers, and more. 

`  ` 

 

#### Package Retrieval

In order to run the Workspace project, external packages will need to be restored via the “pub get” command. Since the Workspace solution contains multiple internal packages, packages for each internal package will need to be restored. Restore packages in the following order: 

1. font_awesome_flutter
2. fmi-mineral-dsp
3. fmi_core 

`  ` 

 

#### Translation 

1. To add new translate-able text, adjust files under “packages/fmi_core/lib/localizations/” folder: 

   * locale_en.arb
   * locale_es-CL.arb
   * locale_es-PE.arb
   * locale_es.arb
   * locale_id.arb 

2. After modifying the files under “packages/fmi_core/lib/localizations/”, we need to run the following command under fmi_core package: 

```
flutter gen-l10n
```

`  `

3. After the command complete, we can see the files will be generated under “packages/fmi_core/lib/generated/”: 

   * fmi_core_localizations_en.dart
   * fmi_core_localizations_es.dart
   * fmi_core_localizations_id.dart 

4. How to use it: 

```
context.coreLocalize.xxx     
coreLocalize(context).xxx
```

`  `

5. Examples: 

```
child: Text(
            context.coreLocalize.searchStart,
            style: Theme.of(context).textTheme.titleLarge,
            ),  
content: Text(
            coreLocalize(_applicationScaffoldMessengerState!.currentContext)
                .youAreOffline),
```

`  ` 

#### Design Patterns 

This project utilizes a number of design patterns to help organize the code in a way so that the solution can grow and be maintainable over time. 

`  ` 

 

**MVVM** 

This solution practices the MVVM pattern, a common pattern utilized by enterprise applications, typically seen in mobile frameworks. Within MVVM, there are three main components in an application. 

   * **Model:** The model represents the state of the application, in this case the state can be considered the state of service classes or remote/local data affecting the application. 
   * **View:** The view is the presentation layer of the application. It is concerned with presenting data as present in its associated view model. 
   * **View Model:** The view model is an abstraction of the view exposing public properties and commands that the view relies on. The view model typically acts as a coordinator between the presentation layers actions and how those actions affect the model. This application loosely follows the [Stacked](https://pub.dev/packages/stacked) interpretation of MVVM in Flutter. 

`  ` 

 

**Services** 

Within this solution, services are utilized to orchestrate business logic in our application. This is where the application may reach out to APIs and local data. Service state and the data backing services can be interpreted as the model of this application. 

`  ` 

 

**Routing** 

With the incorporation of web into our targeted platforms, our application utilizes Navigator 2.0, Flutter’s out of the box approach to navigation using [Deep Link](https://docs.flutter.dev/ui/navigation/deep-linking). All routing related configurations in the application can be found in the routing directory. There are four main parts: 

   * **AppLink:** The AppLink is an intermediary object between a URL string and the state of the application. The objective of the AppLink class is to parse the navigation configuration to and from a URL string. 
   * **AppLinkLocationKeys:** AppLinkLocationKeys correspond to main application route paths, with the purpose of corresponding specific URL locations with Views in the application. 
   * **AppRouteParser:** The AppRouteParser is utilized by the applications router to convert a RouteInformation’s location into an AppLink and AppLinks into RouteInformation. 
   * **AppRouter:** The AppRouter orchestrates updates to URL if internal AppState has changed, and ingests AppLink updates related to browser URL updates to appropriately update the applications state. 

`  ` 

 

**Provider** 

Provider is an integral pattern in Flutter applications. Within this application, [Stacked](https://pub.dev/packages/stacked) makes our ViewModels into providers that the Views listed to. Note, if Provider related functionality is needed from the services, it is recommended to utilize the ReactiveServiceMixin outlined in Stacked documentation. 

`  ` 

 

**Dependency Injection** 

   * For dependency injection, our application utilizes the GetIt package. With GetIt, we are able to define interfaces from abstract classes and inject implementations of those abstractions into the application. This is useful in testing situations and when constructs in the application need to be replaced with alternate implementations. 

`  ` 

 

**JSON** 

In order to handle serialization and deserialization, we utilize the package [json_annotation.](https://pub.dev/packages/json_annotation) 

`  ` 

 
Refer to the json_annotation GitHub page for boilerplate implementation. Once boilerplate is written, within the project base direcory, run the following command to generate to/from json conversion code for solution models. 

```
flutter pub run build_runner build
```

`  ` 

 

#### Updating Flutter

**Approach to Flutter Upgrades**  

1. Flutter upgrades should be done as part of a story. Upgrades often involve debugging through breaking changes. 
2. Flutter upgrades should only be sourced via the “stable” channel. 
3. When an upgrade is being conducted, and a PR has been approved, development teammates should be notified that their flutter SDK will need to be upgraded. 

`  ` 

 

**Upgrading the Flutter SDK** 

In order to upgrade the Flutter SDK type the “flutter upgrade” command in the terminal. The “flutter upgrade” command ill update to the most recent version of the Flutter SDK available. 

```
flutter upgrade
```

`  ` 


**Flutter Upgrade Channels** 

Flutter has three upgrade channels: stable, beta, and master. Google recommends only using the stable channel unless it is critical to upgrade Flutter further. You can change your flutter channel via the “flutter channel” command. For example, if you want to switch to the beta channel and upgrade flutter, you type the “flutter channel beta” command followed by the “flutter upgrade” command. 

```
flutter channel beta
flutter upgrade
```

`  ` 

 

**Breaking Changes** 

When Flutter updates to a new version, developers should anticipate breaking changes. Breaking changes with new versions are outlined [here](https://docs.flutter.dev/release/breaking-changes). Additionally, developers can subscribe to [Flutter announcements.](https://groups.google.com/g/flutter-announce) 

`  ` 

**Fmi Custom Icons** 

Documentation for the Flutter Font Awesome Custom Icons process is under packages/fmi-mineral-dsp/README.md. 

 