#### 12/28/2023

###### Bug Fixes

- Token Retrieval Service - updated to pull token from preference service cache

` `

#### 12/22/2023

###### Enhancements

- FmiSearchDialog - update build context to new definitons

###### Fixes

- FmiSearchBar - fixes jagged corners on text field when condensed and circle shape

` `

#### 12/21/2023

###### Enhancements

- EmployeeLookupMixin - enhance employee lookup search logic
- Scaffold - update documentation and demos for new build context definitions
- FmiScorecard - update context from isMobile to isXSmall and isSmall

#### 12/20/2023

###### Enhancements

- FmiSearchSingleSelect - update context from isMobile to isXSmall and isSmall
- FmiNavigationRail - update demo and documentation build context from !isMobile to isLarge and isMedium

` `

#### 12/19/2023

###### Enhancements

- FmiGenericCard - update context from isMobile to isXSmall and isSmall, add note for parameters in documentation
- FmiMultiSelectList - update context from isMobile to isXSmall and isSmall and isLaptop to isMedium

###### Added

- FmiNavigationDrawer - added core component

` `

#### 12/18/2023

###### Enhancements

- FmiCardHeaderListTile - update context from isMobile to isXSmall and isSmall

` `

#### 12/15/2023

###### Added

- AppBarTheme - added dark theme
- FmiIconThemeData - added on secondary container theme

###### Enhancements

- AppBarTheme - updated light theme
- FmiCandyBar - update context from isMobile to isXSmall and isSmall
- MDG - Refactored Employee content

` `

#### 12/14/2023

###### Enhancements

- FmiSearchSingleSelect - add isCondensed parameter for search bar
- CameraPage - update context from isMobile to isXSmall and isSmall

###### Breaking Changes

- FmiSearchSingleSelect - remove unused parameter overlayBackgroundColor

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new elevation token. - Both artifacts are updated

` `

#### 12/12/2023

###### Enhancements

- Added additional employee properties

###### Breaking Changes

- Update token files in fmi-mineral-dsp and fmi_core. Removed font weight tokens
- Removed thin icon set from Font Awesome Icons
- Removed font files
- Both artifacts are updated
- Changes were made to reduce package sizes of applications. It is necessary to complete the following manual steps to update the fonts.

**Fonts Were Removed:**

- Note: Scripts include code to copy fonts from the Core artifact to the ./lib/fonts. Once copied these files are not removed. MDS is removing fonts from the Core artifact to reduce package sizes and reduce the number of authorized fonts and weights. This will require current existing applications to go through a process to realign the fonts in their application with those in the core artifact.

Step 1:

- Delete folder: ./lib/fonts
- Delete packages/fmi_core
- Delete packages/fmi-mineral-dsp

Step 2:
Update artifact referencecs in dsp-get-mac.sh and dsp-get-mac.sh

Step 3:
Depending on the dev's local system, dev should run 1 of the 2 scripts below.

```dart
sh dsp-get-mac.sh
sh dsp-get-pc.sh
```

Step 4:
Run

```dart
sh dsp-build.sh
```

Step 5:
Verify that folder ./lib/fonts was recreated. Should have only the following files:

- SF-Pro_text-Bold.otf
- SF-Pro_text-BoldItalic.otf
- SF-Pro_text-Light.otf
- SF-Pro_text-LightItalic.otf
- SF-Pro_text-Medium.otf
- SF-Pro_text-MediumItalic.otf
- SF-Pro_text-Regular.otf
- SF-Pro_text-RegularItalic.otf
- SF-Pro_text-SemiBold.otf

Step 6:
Project should be referencing fonts created from fmi-mineral-dsp.
During the script process, the fonts are copied into ./lib/fonts.

If your project has a separate fonts folder (i.e. root/fonts) and is using fonts in that folder, it is strongly encouraged to update your font reference to point to the ./lib/fonts and delete fonts loaded in a root folder.

Go to pubspec.yaml & remove fonts not included in the ./lib/fonts folder

- Hack-Bold
- Hack-BoldItalic
- Hack-Italic
- Hack-Regular
- SF-Pro-Text-Ultralight
- SF-Pro-Text-UltralightItalic
- SF-Pro-Text-Thin
- SF-Pro-Text-ThinItalic
- SF-Pro-Text-Heavy
- SF-Pro-Text-HeavyItalic
- SF-Pro-Text-Black
- SF-Pro-Text-BlackItalic
- SF-Pro-Text-SemiboldItalic

Step 7:
Run and test project to insure no errors.

Step 8:
Commit and merge updates. Verify pipeline and dev environment.

**Font Weight Tokens Were Removed:**

- Note: Four font weights have been removed from the token library. If these tokens are being referenced in the application, please replace with the closest comparable font weight token.

- baseFontWeightsUltralight & baseFontWeightsThin - replace with baseFontWeightsLight
- baseFontWeightsHeavy & baseFontWeightsBlack - replace with baseFontWeightsBold

**Font Awesome Icons Were Removed:**

Thin icons were removed from the library.

- Note: If the application is currently using thin icons, please replace with light version.

` `

#### 12/11/2023

###### Enhancements

- Remove If Condition to enable selected button when showDialog : true, this changes applied to collapsible question and conditional question
- InkWell condition badge - remove filter based on specific button type and using first data that included showDialog is true

` `

#### 12/8/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new column tokens and updated max constraint. - Both artifacts are updated
- BuildContextExtension - Added new set of breakpoints with 4 definitions to be used by designers and developers going forward

###### Enhancements

- BuildContextExtension - Updated outerGutter and horizontalSpacing for new breakpoints

` `

#### 12/7/2023

###### Enhancements

- FmiMultiEmployeeLookupWidget - Added didUpdateWidget to handle changes to employee list

` `

#### 12/6/2023

###### Enhancements

- FmiTabBar - Added new scrollPhysics parameter, displayScrollPhysics for controlling scroll physics in the CustomScrollView

` `

#### 12/5/2023

###### Added

- FmiSearchDialog - Added new core component, demo, and documentation
- FmiBottomSheetWrapper, FmiDialogWrapper - Added as companion core components to FmiSearchDialog. Can be used independently.
- SearchDialogProvider - Created as companion core component to FmiSearchDialog
- BuildContextExtension - Added definition of usableWidth

###### Enhancements

- FmiStartSearchWidget - Added shared core component, refactored FmiEmployeeDirectorySearchOverlay, EmployeeLookupDialogWidget, GenericLookupDialogWidget, FmiMultiEmployeeLookupDialogWidget, and FmiMultiSelectDialogWidget to use shared component
- FmiSearchNoResultWidget - Added shared core component, refactored FmiSearchSingleSelect to use shared component
- FmiMultiEmployeeLookupWidget - Add flag to show/hide chips

` `

#### 12/1/2023

###### Enhancements

- MDG - Added Card Themes content page

` `

#### 11/29/2023

###### Enhancements

- MDG - Added Card Sub Components content page

` `

#### 11/28/2023

###### Enhancements

- MDG - Refactored Cards content
- Core - Rearranged grouping of core components Attachments and Buttons
- Changelog - Updated markdown formatting replacing h4 with bold body text and added line breaks in between dates
- Update README files fmi-mineral-dsp and fmi_core. Both artifacts are updated

` `

#### 11/27/2023

###### BREAKING CHANGES

- Moved Authentication package, Telemetry Service and Preference Service into fmi_core. Remove project references to authentication package when consuming

` `

#### 11/21/2023

###### BREAKING CHANGES

- Removed initialize from ConnectedAsset and Employee services and repository.
- Added optional flag to force Api Call on get methods for Connected Asset and Employee

###### Enhancements

- Asset - added field property assetID into Asset Class model
- FmiConnectedAssetLookupWidget - add option searchTerm as parameter with nullable value to populate the asset data by equipmwntNo and assetID

` `

#### 11/20/2023

###### Added

- MDG - Added Bottom Sheet content

###### Enhancements

- MDG - Refactored Badges content

` `

#### 11/17/2023

###### Added

- ToggleButtonsTheme - added dark and light theming for toggle buttons, documentation, and demos

###### Enhancements

- FmiTitleListTile - added deprecated status and will be removed in future artifact
- FmiKpiProgressCard - added deprecated status and will be removed in future artifact

` `

#### 11/16/2023

###### Enhancements

- MDG - Refactored Attachments content

` `

#### 11/15/2023

###### Enhancements

- MDG - Refactored Button page component to support OOB design and code contents
- FmiAvatar, FmiIconButton, FmiDialogIconButton, FmiToggleButton - update assigned tokens for padding, opacity
- FaSafeIcons - Added svg for boat collision and updated FaSafeIcons enum
- MDG - Refactored Animation content

` `

#### 11/14/2023

###### Added

- FmiOverviewBar- Added demo and documentation for existing core component

###### Enhancements

- FmiIcons - Removed retired icons and remaining icons updated unicodes

` `

#### 11/10/2023

###### Added

- FmiEmployeeDirectorySearch - Added new component FmiEmployeeDirectorySearch, demo, and documentation

###### Enhancements

- FmiEmployeeInfoWidget - Added trailing parameter, updated documentation and demo
- FmiSearchSingleSelect - Refactored to pull out search bar into separate component to be shared with FmiEmployeeDirectorySearch
- Update token files in fmi-mineral-dsp and fmi_core. Added new container and opacity tokens. - Both artifacts are updated

###### Fixes

- FmiCardHeaderListTile - Fixed bug when hide background color set to false and the background tile color made text unreadable

` `

#### 11/09/2023

**Removed**

- Removed LauncherRepository from Init and all references as they are not used
- Removed LauncherServiceImpl and LauncherService from all references as they are not used

` `

#### 11/06/2023

###### Enhancements

- LocationService - updated determinePosition timeout to 10 seconds
- FmiMap - added optional parameter for showCurrentPosition
- FmiMap - current position marker moved to beginning so marker stack in case a pin is above current position so then pin can be seen
- FmiLocationPicker - disabling current position marker in read only mode

###### Fixes

- FmiMap - if markers are updated, current position marker is maintained throughout lifecycle of widget

` `

#### 11/02/2023

###### Added

- FmiLocationPicker - Added new component to allow users to pick a gps coordinate off of a map
- OfflineView - Standard offline view in EWS added to fmi_core for reuse

###### Enhancements

- FmiMap - Exposed onPositionChanged event so consumers can react when map is panned to a new position

` `

#### 10/31/2023

###### Added

- FmiEmployeeInfoWidget - Added new component FmiEmployeeInfoWidget, demo, and documentation

` `

#### 10/30/2023

###### Fixes

- FmiBottomNavigationBarWidget - Fixing launcher not appearing when not in index 4

` `

#### 10/26/2023

###### Enhancements

- MDS Guide - Updated typography markdown

` `

#### 10/25/2023

###### Enhancements

- Updated Font Awesome Flutter 10.6.0 - Updated files for external app scripts. Both artifacts are updated

` `

#### 10/25/2023

###### Added

- FmiCandyBar - Added new component FmiCandyBar, FmiCandyBarItem, FmiCandyBarType, demo, and documentation

` `

#### 10/24/2023

###### Enhancements

- Updated Font Awesome Flutter 10.6.0 - Added pro icons. Both artifacts are updated

` `

#### 10/23/2023

###### Enhancements

- RecurringDataRetrievalService - adding ability to manually initiate a data pull, and to reset service

` `

#### 10/20/2023

###### Enhancements

- Employee - Added workPhone and mobilePhone fields.

` `

#### 10/19/2023

###### Enhancements

- RecurringDataRetrievalService - added ability for RecurringDataRetrievalService consumer to also utilize provider pattern within consuming class if desired

` `

#### 10/17/2023

###### Added

- Chip Themes - Added alternative themes, demo, and documentation

###### Enhancements

- Chip Themes - Updated default theming

` `

#### 10/12/2023

###### Fixes

- Flutter Map - Fixed breaking changes with package update. Specify specific version.

###### Added

- SnackBarService.showPinnedSnackBar - Added new Snack Bar Service, demo, and documentation

###### Enhancements

- SnackBarService.showDismissibleSnackBar - Add optional named parameters, demo, and documentation

` `

#### 10/11/2023

###### Fixes

- MDS Guide Typography - Fixed issue with FMI Text Themes token name not displaying and system token displaying as undefined

` `

#### 10/09/2023

###### Enhancements

- Core - References to FontAwesomeIcons.magnifyingGlass adjusted to FontAwesomeIcons.solidMagnifyingGlass
- EmployeeLookupWidget - Names now in title case
- FmiMultiEmployeeLookupWidget - Names now in title case

###### Fixes

- FmiAttachmentPreviewWidget - Background color of list tiles adjusted to be transparent

` `

#### 10/06/2023

###### Enhancements

- MDG - Updated Foundations section and the ordering of demos with code snippets

###### BREAKING CHANGES

- Core - Added deprecation tag to a list of core components to be replaced with OOB components

` `

#### 10/05/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new container token. - Both artifacts are updated

###### Enhancements

- MDG - Updated Foundations section and the ordering of demos with code snippets
- Date time extension - Make private method public

` `

#### 09/28/2023

###### Enhancements

- MDG - Updated formatting and content in About section

` `

#### 09/27/2023

###### Enhancements

- MDG - Updated illustrations demo

` `

#### 09/26/2023

###### Enhancements

- EmployeeLookupWidget - Inkwell included to enable hover cursors and highlight, ability to customize trailing icon size

` `

#### 09/25/2023

###### Fixes

- FmiAppBarTop - Fixed issue with index changing onTap not matching with current page

` `

#### 09/22/2023

###### Enhancements

- FmiIcons - Updated new custom icons

` `

#### 09/21/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new container token. - Both artifacts are updated

###### Enhancements

- MDG - Updated About Section with new titles and content

` `

#### 09/20/2023

###### Enhancements

- MDG - Restructured site to remove Top App Bar and move App Bar elements into drawer
- FmiAttachmentWidget - Added in optional property for stretch to support expanded button
- PhotoAttachmentWidget - Added in optional property for stretch to support expanded button

` `

#### 09/19/2023

###### Enhancements

- FmiTimeline - Added in optional fields for TimelineStep trailingButtonCallback, trailingButtonIconOverride, and trailingButtonIconColorOverride

` `

#### 09/18/2023

###### Enhancements

- FmiTabBar - deprecated noElevation, added property for custom scroll behavior, fixed issue with additional scroll bar

` `

#### 09/14/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new gap tokens. - Both artifacts are updated

###### Enhancements

- MDG - Refactored Home Page landing view to About Overview section

` `

#### 09/12/2023

###### Added

- MDG - Updated Processes Section with Tokens, Adding/Updating Tokens, and Adding New Component. Removed other sections from the page_manifest.

###### Fixes

- FmiMap - Toast messaging removed

` `

#### 09/07/2023

###### Enhancements

- FmiSearchSingleSelect - Added in optional parameters for onFocusChanged, backgroundColor, leadingIconColor, suffixIconColor, and overlayBackgroundColor

` `

#### 09/01/2023

###### Added

- MDG - Added search to the app bar that can query each page in the drawer

` `

#### 08/31/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new chart tokens. - Both artifacts are updated

###### Fixes

- FmiAppBarTop - Added postFrameCallBack to correctly update the index to fix indicator when navigating to or from different instances

` `

#### 08/30/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new container tokens. - Both artifacts are updated

###### Enhancements

- FmiTimeline - Added in optional fields for overriding colors as well as adding a comment, link, and dateTime

` `

#### 08/29/2023

###### Enhancements

- DateTimeExtension - Abbreviated terminology available for convertToAgo method via optional parameter

` `

#### 08/28/2023

###### Fixes

- MDG - Removed no code contents label when no code contents markdown is provided and removed elevation from the App Bar
- FmiAppBarTop - Fixed null error when adding in an svg asset instead of FontAwesome icon

` `

#### 08/16/2023

###### Added

- FmiColor - Added 13 launcher enum colors via mapping conversion method - getFmiColor(FmiColor)

###### Enhancements

- FmiChipTheme - Updated border, label, shape, checkmark flag, and label padding

` `

#### 08/15/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new color schemes extensions. - Both artifacts are updated

###### Fixes

- MDG - Updated reference links to the core and mineral-dsp README markdown files to fix retrieval error

` `

#### 08/14/2023

###### Enhancements

- FmiSearchSingleSelect - add animation and reverse animation to overlay.
- FmiMap - added enableFloatingControls parameter to allow consumers to remove floating buttons

###### Fixes

- Fa Safe Svgs - Updated some svg files to address Flutter rendering warnings.

` `

#### 08/09/2023

###### Added

- Animations pkg - Added animations package for Material motion. Transition patterns: Container transform, Shared axis, Fade through, and Fade.

` `

#### 08/07/2023

###### Enhancements

- FmiProgressBar - Add optional properties: bool showTrackLength and double variance. Updated variance color/styling for 0, allow target value to follow target line, and updated demos

###### Fixes

- FmiProgressBar - Fix hidden marker bug

` `

#### 08/04/2023

###### Enhancements

- FmiNavigationRail - updated color tokens, added FAB launcher slot, updated demo and documentation

` `

#### 08/03/2023

###### Added

- FmiIcons - Added new custom icons
- Fonts - Added new font files for weights to fmi-mineral-dsp
- Added barrel file for custom icons

` `

#### 08/02/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core - Both artifacts are updated

###### Fixes

- FmiMap - Add didUpdateWidget to get changes to markers from outside component

` `

#### 08/01/2023

###### Enhancements

- GenericLookup - Add new Generic Lookup

###### BREAKING CHANGES

- Add GenericRepository in CoreInit.Init, this need to be implemented manually

` `

#### 07/31/2023

###### Enhancements

- FmiSearchSingleSelect - added optional properties: fieldTitleTextStyle, hideElevation, and useCircleShape

` `

#### 07/28/2023

###### Added

- MDG - Added breakpoints page under Styles category and updated Scaffold demo to display the gutter

###### Fixes

- FmiMap - Add method to move map, expose MapController

` `

#### 07/27/2023

###### BREAKING CHANGES

- Add EmployeeOnlineRepository in CoreInit.Init, this need to be implemented manually

###### Enhancements

- EmployeeLookupDialog - Support online mode and lazy load

###### Fixes

- LocationService - fixed determinePosition() running infinitely while location services is turned on, permissions are accepted, but GPS signal cannot be found.
- Fixed bugs related to demos for flutter widgets

` `

#### 07/26/2023

###### Enhancements

- AttachmentModel - Attachments now include a unique guid id upon generation

` `

#### 07/21/2023

###### Enhancements

- FmiBottomNavigationBar - Added forceDarkMode parameter

###### Fixes

- FmiAvatar - fixed getDisplayNameLast() method for scenario: displayName don't have last name

` `

#### 07/19/2023

###### BREAKING CHANGES

- Consuming applications will need to make sure they include an override for http: 1.0.0 in pubspec.yaml

###### Enhancements

- FmiMap - Map component that can display markers and respond to user interaction

###### Added

- Update token files in fmi-mineral-dsp and fmi_core - Both artifacts are updated

` `

#### 07/18/2023

###### Enhancements

- FmiBottomNavigationBar - Updated UI with selected indicator, support for icon/selectedIcon, color tokens, added force dark mode demo

` `

#### 07/11/2023

###### Fixes

- FmiAppBarTop - fixed selected nav item not correctly setting proper index on load/url change

` `

#### 07/10/2023

###### Enhancements

- FmiBottomNavigationBar - added FAB launcher to last slot

` `

#### 07/07/2023

###### Fixes

- Localizations - fix translation with pluralLogic

` `

#### 07/05/2023

###### Enhancements

- ConnectedAssetLocalStorageRepository - add new method setAssets for using single transaction to clear out and insert assets data
- EmployeeLocalStorageRepository - add new method setEmployees for using single transaction to clear out and insert employees data

` `

#### 07/06/2023

###### BREAKING CHANGES

- ConnectedAssetService - Enable to force reload from API (breaking change due to different contract introduced)
- ConnectedAssetRepository - Enable to force reload from API (breaking change due to different contract introduced)

` `

#### 07/05/2023

###### Enhancements

- FmiGenericCard - add optional text styling properties, use current styling as default, create demo to show use of properties
- FmiBottomNavigationBar - added overflow implementation via Modal Bottom Sheet to support more navigation items

` `

#### 06/30/2023

###### Fixes

- FmiAvatar - label no longer wraps in the middle of a name

` `

#### 06/28/2023

###### Enhancements

- FmiAppBarTop - added isElevated property, removed scaffold component color, added force dark mode demo, updated color tokens

###### Fixes

- SwitchTheme - updated so disabled theme matches enabled theme

###### Added

- Added option to take a picture with camera when attaching a photo
- Added Spanish Translations

` `

#### 06/26/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core - Both artifacts are updated

###### Fixes

- RadioButtonGroupWidget - set splash radius to 12 to avoid overlap

` `

#### 06/23/2023

###### Fixes

- FmiProgressBar - fixed issues with track border cutting off

` `

#### 06/22/2023

###### Enhancements

- FmiAppBarTop - added support for navigation, sliver floating, and conditional displaying of items depending on screen contexts. Updated demo and documentation.

` `

#### 06/21/2023

###### Fixes

- Updated App Launcher to have list of apps/forms passed in rather than from a repo at time of tab navigation.

` `

#### 06/20/2023

###### Fixes

- App Launcher - removed divider from TabBar
- fmi_na_warning_text_field, fmi_warning_text_field - contextMenuBuilder replaced deprecated property ToolbarOptions

###### Added

- Added new method "getEmployeeById" in EmployeeRepository. This method need to be implemented manually.

###### Enhancements

- FmiAppBarTop - Added support for navigation, sliver floating, and conditional displaying of items depending on screen contexts. Updated demo and documentation.

` `

#### 06/19/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core - Both artifacts are updated
- Added new custom Fmi Icons

` `

#### 06/16/2023

###### Added

- EmployeeModel deprecated, this is a duplicate class of Employee originating from POC phase. EmployeeModel will be removed in the future.

` `

#### 06/15/2023

###### Added

- Update token files in fmi-mineral-dsp and fmi_core - Both artifacts are updated

###### Fixes

- Divider Theme - adjusted colors

` `

#### 06/09/2023

###### BREAKING CHANGES

- pub.dev hosted isar_generator is no longer compatible with flutter 3.10.1, to reference isar_generator will need to add following reference to pubspec.yaml of fmi_core consuming project:
  isar_generator:
  path: ./packages/fmi_core/packages/isar_generator

###### Fixes

- FmiSearchSingleSelect - fixes overlay prematurly dismissing
- MDS Guide - fixes markdown error in buttons/fmi icon button

` `

#### 06/08/2023

###### Fixes

- Fmi Launcher Demo - update mock data for unique ids
- MDS Guide - fixes markdown error screen flash during file load by adding loading indicator

` `

#### 06/07/2023

###### BREAKING CHANGES

- Upgrade Fmi_Core to Flutter 3.10.1
- Package upgrades
- Update azure_ad_authentication for new web responses
- Update web index.html for new load sequence
- Update badges to use new version of package, resolve namespace conflict with Flutter Badges
- Update Syncfusion latest package, update return type for onCellSubmit from void to Future
- Update token files in fmi-mineral-dsp and fmi_core - Both artifacts are updated

###### Fixes

- Flutter 3.10.1 - Dart file fixes, update deprecated methods
- MDS Guide - Fixes issue with components/images render display exception
- MDS Guide - Fixes issue with demos/skeleton loader timer exception
- Tab Bar Theme Light - Fixes Flutter update issue with tab label colors unreadable
- MDS Guide - Fixes Flutter update issue with drawer background colors
- Fmi Dialog Filter Multi and Single Select Button - Fixes Flutter update issue with background and divider colors

` `

#### 06/06/2023

###### Enhancements

- FmiKpiListCard - added options to show without a unit and to show the trend as a value instead of percentage

` `

#### 06/06/2023

###### Added

- FmiPhoneNumberInput - add option ignoreBlank to skip validation when empty

###### Fixes

- FmiPhoneNumberInput - Additional validation to enable form validation when phone number input onchange not triggered.

` `

#### 06/02/2023

###### Enhancements

- FmiLauncher - added new options: autoDownload and isHidden.
- FmiLauncherContent - added fa-lock icon when autoDownload state.
- FmiProgressBar - refactored SyncFusion component using a SfCartesianChart to fix alignment/padding issues. Added support for primary color with enum ProgressBarColorScheme.primary.

` `

#### 05/31/2023

###### BREAKING CHANGES

- file_picker to version ^5.2.2 and added override for ffi package to allow isar compatibility
- Projects with isar dependency added to pubspec.yaml that also reference fmi_core will need to add dependency_overrides: section with ffi overridden to ffi: ^2.0.1

` `

#### 05/25/2023

###### Fixes

- FmiHoverCard - fixed clipping for elevated header variant

` `

#### 05/25/2023

###### Fixes

- FmiLauncher - added enum localization.
- FmiAppLauncherFavorite - added enum localization.

` `

#### 05/24/2023

###### Enhancements

- FmiTabBar - added support for more tab items, support for mobile screen sizes, and optional parameter for isScrollable (default false). Exposed snap and floating parameters to FmiTabBar.
- FmiSearchSingleSelect - removed enter key functionality (TextInputAction.none)

` `

#### 05/23/2023

###### Fixes

- Fixed issue with hyperlink launch mode not mapping correctly

` `

#### 05/22/2023

###### Added

- Added FmiHyperlink to support hyperlink look and feel + navigation
- Added BuildContextExtension for outerGutter and horizontalSpacing for responsive breakpoints
- Added LayoutConstants for maxConstraint for desktop breakpoint

` `

#### 05/19/2023

###### Added

- Added new Figma tokens

` `

#### 05/18/2023

###### BREAKING CHANGES

- Updated FmiFeaturedCard with isFlush parameter to optionally remove padding

###### Enhancements

- Updated FmiProgressBar with additional UI display rules

` `

#### 05/17/2023

###### Added

- Added new core component FmiProgressBar with corresponding demo and documentation in the Sync Fusion section

` `

#### 05/17/2023

###### Added

- Added Translation

` `

#### 05/16/2023

###### Fixes

- Rename PhotoURL to PhotoUrl to match the value from the API

` `

#### 05/15/2023

###### Fixes

- Sort Favorite forms and Apps alphabetically

` `

#### 05/12/2023

###### Fixes

- Fixed issue with FmiTabBar view with missing controller parameter. Added buttons to demo to animate to different tabs

` `

#### 05/10/2023

###### Enhancements

- Updated FmiFeaturedCard and FmiVerticalCard with parameters for maxlines for title and description
- Updated FmiFeaturedCard, FmiVerticalCard, and FmiHorizontalCard for overflow

` `

#### 05/08/2023

###### Enhancements

- Updated FmiFeaturedCard padding for laptop build context

###### Fixes

- Updated Launcher component to support external data, improve performance, adjust styles

` `

#### 05/05/2023

###### Added

- Added new core component FmiGenericCard with corresponding demo and documentation in the cards section
  ` `

#### 05/03/2023

###### Fixes

- Address chip overflow on FmiSearchSingleSelect
- Remove sliver padding for mobile platforms on FmiSearchSingleSelect

` `

#### 05/02/2023

###### Enhancements

- Added more top padding to the FmiHoverCard

` `

#### 04/27/2023

###### Enhancements

- Updated FmiSearchSingleSelect to clear and unfocus search bar on selection.
- Removed mobile breakpoint in FmiHoverCard, increased default height to 250 and increased initial number of links displayed from 3 to 4. And, readded click and expanding functionality with the removal of the scrollable feature.

` `

#### 04/26/2023

###### Enhancements

- Updated text theming and font weights for FmiHoverCard

###### Fixes

- Updated TitleWithSubscript for Flexible wrapper on first text position. Updated documentation to indicate recommended usage.
- Updated FmiHoverCard to display the divider consistently on the default variant. Added height parameter (default 200) to bound the height of the card to allow the ListView (links) to be scrollable.

` `

#### 04/25/2023

###### Enhancements

- Added enhancement to FmiHoverCard to add a text overflow on the title and text links. Modified border radius to match Figma design

` `

#### 04/24/2023

###### Added

- Added FmiSearchSingleSelect core component with corresponding documentation and demo

` `

#### 04/21/2023

###### Enhancements

- Added enhancement to expose three FmiTabBar parameters (onTap, tabController, scrollPhysics)

###### Fixes

- Fixed overflow bug with multi select on smaller screen heights

` `

#### 04/17/2023

###### Added

- Added tokens for additional colors

` `

#### 04/11/2023

###### Fixes

- Fixed NaWarningTextField behavior inside repeater & naGroup.

` `

#### 04/07/2023

###### Added

- Added Hover Card core component with corresponding documentation and demo

` `

#### 04/06/2023

###### Fixes

- Fixed documentation link button not navigating to specified documentation page
- Fixed nav menu indicator not updating after clicking documentation link button or URL change
- Fixed side navigation not scrolling automatically to new page if link button is clicked

` `

#### 04/05/2023

###### Added

- Added tokens for font weights

` `

#### 03/30/2023

###### Enhancements

- Updated FmiScorecard to have metric parameter be optional and support warningIndicator flag.
- Updated FmiScorecard demo to support radial graph addition
- Updated FmiTabBar Demo to support OOB TabBar for mobile context

` `

#### 03/29/2023

###### Added

- Added Fmi Launcher to core with coresponding demo and documentation

` `

#### 03/24/2023

###### Enhancements

- Updates FmiFeaturedCard and FmiVerticalCard adjusted layout including text themes and padding (includes zero padding in !mobile) and updated subtitle from required to optional
- Updates FmiKpiListCard adjusted text themes and added parameter for background color

` `

#### 03/23/2023

###### Enhancements

- Updates FmiFeaturedCard and FmiVerticalCard with padding
- Updates FmiKpiGraphCard and FmiKpiListCard trailing kpi data with right alignment and added optional parameter for decimal places on FmiKpiTrend model

` `

#### 03/22/2023

###### Fixes

- Added demo and updated documentation for FmiKpiGraphCard

###### Enhancements

- Updates FmiHorizontalCard with new optional parameters and layout and changed subtitle from required to optional

` `

#### 03/21/2023

###### Fixes

- Fixed bug with FmiTabBar clipping with content
- Adjusting SyncDomainMetadataLocalStorageRepositoryImpl to convert lastSync included in results back to utc

###### Enhancements

- Updates FmiKpiListCard adjust layout for optional subtitle and overline when parameters are null

` `

#### 03/21/2023

###### Fixes

- Updated FmiMineScoreCard to StatelessWidget
- fixed the icon trend.
- Updated formula percentage

` `

#### 03/20/2023

###### Enhancements

- Updates FmiKpiListCard hide optional start slot when parameter is null
- Updates FmiHorizontalCard when optional visual parameter is null extends text

` `

#### 03/15/2023

###### Added

- Added FmiAttachmentWidget, attachment widget that can pick any files

###### Enhancements

- Updates RecurringDataRetrievalService contracts to support incremental payloads

` `

#### 03/13/2023

###### Enhancements

- Updated FmiBottomNavigationBar from default type behavior to fixed type behavior
- Updated FmiScorecard with isFlush and isMini flag and behaviors

` `

#### 03/10/2023

###### Enhancements

- Updated News and Department Svg files
- Reverted enhancement for hideDescriptionOnMobile in Dashboard Cards
- Added spacer to FmiFeaturedCard to keep bottom bar (timeStamp and footerItems) pinned to the bottom

` `

#### 03/10/2023

###### Fixes

- Added optional parameter 'forceApiCall' into Employee Service & Repository

` `

#### 03/09/2023

###### Enhancements

- Added design enhancement to Dashboard Cards (FmiFeaturedCard, FmiVerticalCard, FmiHorizontalCard)
- Changed flex on FmiHorizontalCard to accurately match spec
- Updated Dashboard Card demos with width constraint

###### Fixes

- Added padding to remove clipping on items in FmiAppBarTop

` `

#### 03/08/2023

###### Fixes

- Added check on state for icon/action items in FmiAppBarTop

` `

#### 03/08/2023

###### Enhancements

- FmiKpiHelper added getTrend.
- FmiOverviewBar use getTrend from FmiKpiHelper.
- FmiMineScorecard use getTrend from FmiKpiHelper.

` `

#### 03/07/2023

###### Enhancements

- FmiDialogFilterSingleSelectButton added leading widget. Added additional demo.

` `

#### 03/06/2023

###### Enhancements

- FmiDialogFilterSingleSelectButton added demo. Added Navigator pop for dialog in core component.
- FmiDialogFilterMultiSelectButton added demo. Added Navigator pop for dialog in core component.
- OverviewBar added target label parameter
- Updated Material/Mine Overview documentation to use barRange param
- FmiDialogFilterMultiSelectButton added leading widget. Updated Filter Option model. Added additional demo.

###### Fixes

- Fixed issue with OverviewBar chart not rebuilding chart when data values are changed
- FmiDialogFilterMultiSelectButton fix initial selected value getting updated when dialog dismissed outside the environment.
- Fixed direct link navigation returning to Home Page instead of custom url page

` `

#### 03/03/2023

###### Enhancements

- FmiNavigationRail added center alignment for labels

` `

#### 03/02/2023

###### Fixes

- Fix error in retrieving markdown for Na Warning Text Field
- Fix action item not displaying when icon items are null

###### Enhancements

- Updated FmiMaterialOverview overviewIcon and overviewTitle to optional properties
- Move Changelog to core package
- Updated FmiScorecard with isChecked/isTransparent flags

` `

#### 03/01/2023

###### Enhancements

- Refactored UI of MDG site to a newer design spec
- Added auto scrolling behavior to components that have more than one widget

###### Fixes

- Added visible flag for overviewUtilCharts on FmiMaterialOverview

` `

#### 02/28/2023

###### Fixes

- Closeable app bar hit area enhanced

` `

#### 02/27/2023

###### Fixes

- Added null check to FmiAppBarTop to remove potential error on mobile screen

` `

#### 02/24/2023

###### Fixes

- Fixed date time extension convertToAgo

###### Enhancements

- Replaced button bar with wrap in FmiVerticalCard to deal with potential overflow errors
- Added property to FmiAppBarTop to remove color changing when scrolling (for FmiTabBar functionality)

###### Added

- Added Fmi Tab Bar Component to core and corresponding documentation/demo to the MDG

` `

#### 02/23/2023

###### Added

- Added FmiDialogFilterSingleSelectButton and FmiDialogFilterMultiSelectButton. Demo to follow.
- Added FmiNaWarningTextfield

` `

#### 02/22/2023

###### Enhancements

- Added parameter flag to FmiCardHeaderListTile to hide background tile color

` `

#### 02/21/2023

###### Added

- Added TwoButtonDialog

###### Enhancements

- Changed the ordering of FmiAppBarTop items (action/icon) to display action items on the left side (first-most)

###### Fixes

- Fixed FmiKpiHelper - getPercentage result

` `

#### 02/20/2023

###### Enhancements

- Added flag parameters for FmiAppBarTop mobile: alwaysShow and hideOnMobile flags to the AppBarTopComponent

` `

#### 02/16/2023

###### BREAKING CHANGES

- Update token files in fmi-mineral-dsp and fmi_core - Both artifacts are updated

###### Added

- Added additional chart color schemes
- Added skeleton loader demo and documentation

` `

#### 02/15/2023

###### Fixes

- Fixed factory for FaultedStageSync missing draftSearchKey

` `

#### 02/14/2023

###### Added

- Added FmiExpandableKpiCard with corresponding documentation and demo
- Updating SyncableService is recognize faulted staged sync records
- Implementing SyncToastServiceImpl to display toasts when a faulted staged sync record is added

###### Fixes

- Added additional assets prefix to Scaffold demo for referencing proper assets folder in dev site

` `

#### 02/13/2023

###### Fixes

- Added text overflow clip and max lines 1 to TitleWithOverlineWidget, TitleWithSubscriptWidget, and SubtitleTwoLineWidget
- fmiSignatureViewer utc date conversion to local time

###### Added

- Added datetime extension convertToDueIn
- Added datetime extension markDateAsUtc

` `

#### 02/10/2023

###### Fixes

- Fixed selected index for url changes for both Navigation Rail and Bottom Navigation

` `

#### 02/09/2023

###### Fixes

- Fixed selected index state for both Navigation Rail and Bottom Navigation

` `

#### 02/09/2023

###### Added

- Added N/A Button Selection in Warning Textfield. (US-99472)

` `

#### 02/08/2023

###### Added

- Added Changelog to Mineral Design Guide

###### Enhancements

- Updated the demo and documentation for both Navigation Rail and Bottom Navigation
- Updated Navigation Rail and Bottom Navigation parameter prefixes

` `

#### 02/07/2023

###### Enhancements

- Added green checkmark indicator when offline to FMI Signature Viewer (US-92040)

` `

#### 02/05/2023

###### Enhancements

- Removed default person icon and added support to long text in chip card for FMI Multi Select Widget (US-103705)

` `

#### 02/03/2023

###### Added

- Added FMI App Bar Top Component (US-107723)
- Added Scaffold Demo section

###### BREAKING CHANGES

- Increased sizing of FMI Avatar when using the large variant (US-107370)

` `

#### 02/01/2023

###### Enhancements

- Updated Dashboard Cards with scalability to expand to parent widget (US-106216/218/220)

###### Fixes

- Fixed overflow errors with Dashboard Cards (US-106216/218/220)

` `

#### 01/31/2023

###### Enhancements

- Removed text theme for Title With Subscript Widget (US-104815)
- Removed warning in Bottom Navigation (US-105470)

` `

#### 01/26/2023

###### Added

- Added Dashboard Cards Component (US-106216/218/220)
- Added Bottom Navigation Component (US-105470)

###### Fixes

- Fixed layout of the title component in Conditional Question Widget (US-104614)

` `

#### 01/25/2023

###### Added

- Added Nav Rail Core Component (US-105374)

###### Enhancements

- Added parameters (avatar, subtitle, subtext) in FMI Overview Bar

###### Fixes

- Fixed issue with hardcoded asset reference in FMI Icon Button

` `

#### 01/24/2023

###### Added

- Added Department and News SVG to the Illustrations Demo page

` `

#### 01/23/2023

###### Enhancements

- Added parameter to support enable/disabled mode to FMI Multi Select Widget (US-103705)

` `

#### 01/22/2023

###### Enhancements

- Added parameters to support Deletion functionality for Forms (US-64290)

` `

#### 01/20/2023

###### Enhancements

- Added additional components (KPI chips and Pie charts) to FMI Material Overview (US-60757)
- Added optional unit of measurement parameter for FMI Scorecard
- Added optional parameter for onPressed for app bar (US-104813)

` `

#### 01/19/2023

###### Fixes

- Fixed Sync - upserting staged sync
- Fixed overflow bug with trailing parameter in Conditional Question (US-104614)

` `

#### 01/18/2023

###### Enhancements

- Support for display name to split as a parameter for FMI Avatar
- Updated color token from chartLime to chartGreen for Mobile KPI Cards
- Updated stage sync implementation to support querying staged syncs
- Added trailing parameter to Conditional Question Widget (US-104614)

` `

#### 01/17/2023

###### Fixes

- Fixed exception with use of expanded with FMI Material Overview (US-60757)

` `

#### 01/12/2023

###### Added

- Added Work Items Color Schemes (US-104822)

` `

#### 01/11/2023

###### Added

- Added Material Overview Component (US-60757)

###### Enhancements

- Updated DataGrid documentation to include code snippets for other DataGrid variants (ListDataGrid, ConditionalDataGrid)

` `

#### 01/10/2023

###### Added

- Added Signature Viewer when initial points are provided to continue (US-104063)
- Supports submitted state of signature canvas component

` `

#### 01/09/2023

###### Added

- Added ability to get GPS position

###### Fixes

- Fixed contract to determinePosition in location_service.dart

` `

#### 01/06/2023

###### Added

- Added Multi Select Component (US-99851)

` `

#### 01/05/2023

###### Added

- Added image dialog to photo attachment widget (US-103246)

###### Enhancements

- Added color conditionals and updated the documentation to Mobile KPI & Graphs (US-91974)

` `

#### 01/03/2023

###### Added

- Added Mobile KPI & Graphs (US-91974)
