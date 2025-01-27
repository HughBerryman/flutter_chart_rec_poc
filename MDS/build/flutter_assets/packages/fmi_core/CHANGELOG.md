#### 1/23/2025

###### Enhancement

- Button Themes - updates for Elevated, Filled, Outlined, and Text, deprecated button style helpers for elevated, added button style helpers for filled, updated button usage, demos, and documentation
  \
   \
   _Note 1:_ Recommend updating all usages of Elevated, Filled, Outlined, and Text buttons to the new standards. See code snippets.
  \
   \
  _Note 2:_ On icons, remove icon sizing and coloring. Icons should have start alignment. End alignment is not approved for icons. Only one icon should be used in the icon parameter with the default icon alignment.
  \
   \
  _Note 3:_ On text, remove text styling.

` `

###### Bug Fix

- Fmi Badge - Update badge icon color for warning from on primary container to on warning

` `

#### 1/17/2025

###### Enhancement

- Text fields - Input Decoration - update demos and recommended implementation code snippets for prefix and suffix icons

` `

#### 1/16/2025

###### Breaking Change

- Unicodes for FmiIcons were updated. Any application referencing unicodes will need to update to new unicodes.

###### Enhancement

- FmiIcons - Added new custom icons

` `

#### 1/10/2025

###### Enhancement

- SearchResultsListWidget has been updated to show an FmiEmployeeInfoWidget if the search item is of type Employee. This impacted core components: FmiMultiEmployeeLookupWidget and FmiMultiSelectWidget
- FmiEmployeeInfoWidget - Added new parameter showDetails

` `

#### 1/6/2025

###### Breaking Changes

- App Bar Themes - updated default theming and added alternate themes.
- Closeable app bar
- Core components impacted include: FmiAttachmentDialog, PhotoDialog, EmployeeLookupDialogWidget, GenericLookupDialogWidget, GenericLookupMultiSelectDialogWidget, FmiLocationPickerDialog, FmiMultiEmployeeLookupDialogWidget, FmiMultiSelectDialogWidget, FmiSignatureDialog
  \
  \
  _Note 1:_ Theming has been updated from 56 height to 64 height. Icon theming has been updated from medium to small.
  \
  \
  _Note 2:_ This impacts OOB app bars, Fmi App Bar, Closeable app bar, and core components that utilize one of these three.
  \
  \
  _Note 3:_ Fmi App Bar Top is not impacted by these changes.
  \
  \
  _Note 4:_ See code snippets and documentation for information regarding implementation. To insure that all changes are implemented, it will require changes to the structure.

` `

#### 12/16/2024

###### Added

- Added new container and border radius tokens and new text theme. Updated token files in fmi-mineral-dsp and fmi_core. - Both artifacts are updated

` `

#### 12/9/2024

###### Enhancement

- Chip Themes - activate defaultNoBorder theme, removed deprecated status

#### 12/4/2024

###### Bug Fixes

- Fmi Avatar - small avatar network image not clipping

###### Enhancement

- Add getAttachment method into attachmentService and attachmentRepository
- Input Decoration Theme - add new theme FmiInputDecorationTheme.inverseAltSurface
- Update constant usage in theme files to token values

` `

#### 12/2/2024

###### Breaking Changes

- Chip Themes - updated default theming and transparent theme, deprecated other themes, default theming recommended for surface background, transparent theme recommended for colored backgrounds.
  \
  \
  _Note 1:_ Theming has been updated from 36 px to 32 px height. Chips with FmiAvatar and adhere to the theming will need to update avatar size to small or will experience overflow and display issues. FmiAvatarSize.small is for chip usage.
  \
  \
  _Note 2:_ Theming for icon has adjusted icon sizing to small. Icon styling is part of theming. Exception: Icon part of label widget will need to be sized to icon small.
  \
  \
  _Note 3:_ See code snippets.

` `

#### 11/27/2024

###### Enhancement

- Adjusted padding in the FmiNavigationDrawer

` `

#### 11/26/2024

###### Enhancement

- PhotoAttachmentWidget - Added new parameter 'canDownload'
- FmiSignatureDialog - Added new parameter 'canDownload'

` `

#### 11/25/2024

###### Enhancement

- FmiBadge - added extended badge colors

` `

#### 11/21/2024

###### Bug Fixes

- Fixed issue where multiple overlays would appear when clicking the FmiEmployeeDirectorySearch quickly

` `

#### 11/20/2024

###### Enhancement

- FmiAvatar - add new small size variant for chip use, updated initial text theme for medium variant

` `

#### 11/18/2024

###### Enhancement

- Added new parameter to FmiAvatar - showBadgeBorder
- FmiAttachmentWidget - Added new parameter 'canDownload'

` `

#### 11/7/2024

###### Added

- Added new container tokens and new text theme. Updated token files in fmi-mineral-dsp and fmi_core. - Both artifacts are updated

###### Bug Fixes

- Removed Center widget from FmiAvatar to prevent unexpected results

` `

#### 11/4/2024

###### Enhancement

- Input Decoration Theme - Added disabled hint styling to themes 'defaultNoBorder' and 'defaultNoBorderDense', add disabled demos

` `

#### 11/1/2024

###### Enhancement

- Input Decoration Theme - Added new themes 'defaultNoBorder' and 'defaultNoBorderDense'

` `

#### 10/28/2024

###### Enhancement

- FmiAppBar - Added new parameter icons 'closeIconAppBar'

` `

#### 10/24/2024

###### Enhancement

- FmiIcons - Added new custom icons

` `

#### 10/22/2024

###### Enhancement

- Pubspec.lock updated. Result = Treeview two dimensional scrollable bug resolved.

` `

#### 10/21/2024

###### Enhancement

- Added new size variant to FmiAvatar
- Added new shape variant to FmiAvatar

- Added useBadge parameter to FmiNavigationDestination
- Updated demo and documentation to show new changes

` `

#### 10/16/2024

###### Enhancement

- Text Field - update outline demo to use theme

` `

#### 10/10/2024

###### Enhancement

- Updated disabled theme for Flutter switch component
- Updated demo to show new changes

` `

#### 10/2/2024

###### Added

- Changelog archived - Archived changelog entries for 2023 due to max size of automated email to developer teams

` `

#### 10/1/2024

###### Enhancement

- FmiIcons - Added new custom icons

` `

#### 9/30/2024

###### Enhancement

- FmiNavigationDrawer - Updated UI and added the expansion tile items and header labels to use in the drawer

###### Added

- FmiNavigationDrawerExpansionPanelItemWidget
- FmiNavigationDrawerLabelWidget
- FmiDrawerExpansionTile
- FmiDrawerLabel

` `

#### 9/26/2024

###### Enhancements

- FmiAttachmentWidget - added parameter 'label'
- FmiPhotoAttachmentWidget - added parameter 'label'

` `

#### 9/6/2024

###### Enhancements

- FmiSearchBar - added optional properties: useBorder, enabled
- FmiEmployeeDirectorySearch - added optional properties: useBorder, enabled, useBadgeSystem
- SingleSelectionEmployeeSearchResultsListWidget - added optional properties: useBadgeSystem
- FmiEmployeeDirectorySearchOverlay - added optional properties: useBadgeSystem

` `

#### 8/30/2024

###### Added

- Segmented Button - themes for dark and light mode, OOB documentation and demo

###### Removed

- Toggle Button - OOB documentation and demo. Recommended to replace with Segmented Button.

` `

#### 8/30/2024

###### Added

- Two Dimensional Scrollables - Flutter published package for treeviews and tableviews. Demo and documentation provided for approved implementation. Package will be monitored for fixes for existing bugs and updated when bug fixes and/or enhancements when made available.

` `

#### 8/23/2024

###### Enhancement

- FmiCarouselWidget - Fixed issue where control buttons were appearing or disappearing unexpectingly, updated demo

` `

#### 8/20/2024

###### Enhancement

- SingleSelectionEmployeeSearchResultsListWidget - Changed icon from solidPlus to circlePlus and size to 20

` `

#### 8/19/2024

###### Enhancement

- FmiBadge - Remove inkwell if onTap is null, demo & documentation for icon button implementation
- FmiNavigationDrawer - Add enabled parameter for offline support, add safe area, add sized box for icon and label positioning

` `

#### 8/14/2024

###### Enhancement

- FmiEmployeeDirectorySearch - Added hideOverlayOnEmployeeSelected to support hideOverlay onEmployeeSelected

` `

#### 8/13/2024

###### Enhancement

- FmiCarouselWidget - Update to Font Awesome Icons

` `

#### 8/12/2024

###### Added

- FmiCarouselWidget

` `

#### 8/05/24

###### Enhancements

- employee_qr_dialog - Added endpointUrlRelativePath to support online search.

` `

#### 8/01/2024

###### Added

- Added new option endpointUrlRelativePath into FmiMultiEmployeeLookupWidget to support employee multi select online

` `

#### 7/31/2024

###### Added

- Added new container token. Updated token files in fmi-mineral-dsp and fmi_core. - Both artifacts are updated

` `

#### 7/26/2024

###### Added

- Added back deprecated color parameters to dark and light themes
- background, onBackground, surfaceVariant

` `

#### 7/25/2024

###### Added

- FmiGenericTextField
- FmiGenericTextFormField

` `

#### 7/17/2024

###### Breaking Changes

- FmiAttachmentWidget - set default padding.all(8.0) in PopupMenuButton to 0

- List of affected widgets/components:
- - FmiSignatureDialog
- - PhotoAttachmentWidget

` `

#### 7/16/2024

###### Added

- Dropdown Button Form Field - Add demo and documentation
- Dropdown Menu - Add demo

` `

#### 7/15/2024

###### Enhancements

- Button Theme: Elevated, Text, Outlined, & Filled - Updated visual density to standard

` `

#### 7/12/2024

###### Enhancements

- SampleConditionalQuestionDialog - updated to use input decoration theme to outlined border

###### Bug Fixes

- Fixed flutter depreciated warnings
- Color migration surface variant, background & on background to surface container highest, surface, & on surface
- State migration from Material State to Widget State

` `

#### 7/09/2024

###### Enhancements

- Change Inputdecoration of FmiLocationPicker and FmiSignatureDialog to defaultOutlineInputBorder

###### Added

- Add demo for OOB DateRangePicker

` `

#### 7/05/2024

###### Enhancements

- Add new GenericLookupMultiSelect to support GenericLookup Multi Select item
- GenericLookupMultiSelectDialogWidget, GenericLookupMultiSelectWidget, GenericLookupMultiSelectDataOptions, and GenericLookupMultiSelectSearch

` `

#### 6/27/2024

###### Enhancements

- FmiMultiSelectWidget, GenericLookupWidget, FmiConnectedAssetLookupWidget, and SmapleFmiDialog -
- Changed UnderlineInputBorder to defaultOutlineBorderTheme

` `

#### 6/25/2024

###### Enhancements

- Updated FmiWarningTextField, FmiNaWarningTextField, and FmiPhoneNumberInput to use the defaultOutlineBorderTheme

` `

#### 6/18/2024

###### Enhancements

- Updated MagnifyingGlass and XMark Icons on the following widgets:
- EmployeeLookupWidget, EmployeeLookupDialogWidget, FmiMultiEmployeeLookupWidget, GenericLookupWidget,
- GenericLookupDialogWidget, FmiMultiSelectList, FmiMultiSelectWidget, and FmiSearchBar

` `

#### 6/18/2024

###### Enhancements

- EmployeeLookupWidget, FmiMultiEmployeeLookupWidget - Changed UnderlineInputBorder to defaultOutlineBorderTheme

` `

#### 6/17/2024

###### Added

- Added defaultOutlineBorderTheme

###### Enhancements

- FmiMultiInput - Changed UnderlineInputBorder to the new defaultOutlineBorderTheme

` `

#### 6/12/2024

###### Added

- Add ExemptIndicator property in Employee Model

` `

#### 6/11/2024

###### Added

- Added new container token. Updated token files in fmi-mineral-dsp and fmi_core. - Both artifacts are updated

` `

#### 6/6/2024

###### Added

- Added new demo for text field. Updated

###### Enhancements

- InputDecorationTheme - Updated floating label font size from labelSmall to bodySmall, updated light and dark themes

` `

#### 6/5/2024

###### Fixes

- locale_es-PE - fixed CV Translation

` `

#### 6/4/2024

###### Bug Fixes

- RadioButtonGroupWidget - Fix text overflow in radio button group

` `

#### 5/8/2024

###### Added

- Added new color tokens. Updated token files in fmi-mineral-dsp and fmi_core. - Both artifacts are updated

###### Enhancements

- ColorSchemeExtension - added new chart colors for EVP

` `

#### 4/19/2024

###### Enhancements

- FmiBottomNavigationBar - added new parameters, updated FAB

` `

#### 4/18/2024

###### Fixes

- FmiProgressBar - Fixed bug from SyncFusion Upgrade - update series, numeric axis and marker height

` `

#### 4/11/2024

###### Enhancements

- FmiAppBarTop - added new parameters, updated FAB

###### Added

- FloatingActionButtonThemes - added zero elevation theme

` `

#### 4/9/2024

###### Enhancements

- FmiSearchBar - update UI layout
- FmiEmployeeDirectorySearch - added height parameter, updated demos and documentation
- FmiSearchSingleSelect - added height parameter, updated overlay UI, wrap, and chips, updated demos and documentation

` `

#### 4/8/2024

###### Enhancements

- FloatingActionButtonThemes - added new fab themes, added demos, and updated documentation.
  **Note: FAB theme elevated has been deprecated. Please replace with FAB theme primary container.**

` `

#### 4/2/2024

###### Added

- Added new icon token. Updated token files in fmi-mineral-dsp and fmi_core. - Both artifacts are updated

` `

#### 4/1/2024

###### Enhancements

- FmiAppBarTop - Add parameters to support regular empty badge on action menu vertical ellipsis
- FmiAttachmentPreviewWidget - Allow downloading of non-image files

` `

#### 3/28/2024

###### Added

- Added new container tokens. Updated token files in fmi-mineral-dsp and fmi_core. - Both artifacts are updated

###### Bug Fixes

- FmiMultiEmployeeLookupDialogWidget - Change search logic with getFilteredEmployees(), similar with EmployeeLookup

` `

#### 3/27/24

###### Enhancements

- employee_lookup - Added flag to show/hide Camera Scanner Button.
- fmi_multi_employee_lookup - Added flag to show/hide Camera Scanner Button.

` `

#### 3/22/24

###### Enhancements

- CheckboxThemeData - Flutter Upgrade: update filled color for states

` `

#### 3/20/24

###### Enhancements

- Core components - Update xMark for UI standardization to from solid to regular version

` `

#### 3/18/24

###### Enhancements

- FmiAppBar - Update back arrow for UI standardization to FontAwesomeIcons.arrowLeft

` `

#### 3/14/24

###### Enhancements

- FmiIcons - Added new custom icon for ServiceNow

` `

#### 3/13/24

###### Upgrade

- Upgrade Flutter to 3.19.3
- Upgrade Syncfusion_Charts to 24.2.9
- Upgrade Syncfusion_Gauges to 24.2.9
- Upgrade Syncfusion_DataGrid to 24.2.9

` `

#### 3/8/24

###### Enhancement

- SingleSelectionEmployeeSearchResults - Removed count of additional results when online

` `

#### 3/4/24

###### Enhancement

- FmiBadge - updated regular size.

` `

#### 2/28/24

###### Enhancement

- FmiEmployeeDirectorySearch - Added flag to show/hide trailing icon. Hide overlay on trailing click.

` `

#### 2/26/24

###### Enhancement

- FmiBadge - added new offset parameter, new BadgeSize.regular, and new color variants, refactored to Flutter and replace plugin, updated BadgeSize.medium UI. **Note: BadgeSize.small has been deprecated. Please replace with BadgeSize.regular.**

` `

#### 2/16/24

###### Added

- Added new text theme Label XSmall and text tokens. Updated token files in fmi-mineral-dsp and fmi_core. - Both artifacts are updated

` `

#### 2/12/24

###### Enhancement

- FmiCandyBar - Update border, map tap event to entire bar, add close after tap event clicked

` `

#### 2/2/24

###### Enhancement

- ToggleButtonTheme - Update selected border color

` `

#### 1/31/24

###### Enhancement

- Adjust FmiEmployeeInfoWidget to hide rows when empty string, not just null

` `

#### 1/26/2024

###### Added

- Add HrSystemID in Employee

` `

#### 1/25/2024

###### Enhancement

- Added flag on FmiEmployeeInfoWidget to use either display name or last name, first name

#### 1/25/2024

###### Added

- Add Dutch Translation

` `

#### 1/24/2024

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new container token. - Both artifacts are updated

` `

#### 1/23/2024

###### Bug Fixes

- FmiMultiSelectList - Avatar in selection chips now centered
- FmiMultiEmployeeLookupWidget - Avatar in selection chips now centered
- FmiMultiSelectWidget - Avatar in selection chips centered, errorText parameter added to better conform to other widgets in fmi_forms, removing X on chips when not enabled

###### Added

- Added SupervisorJobTitle, SupervisorPhotoURL to Employee class

` `

#### 1/8/2024

###### Breaking Changes

- TourAlertDialogWidget - Updated the required parameters and UI
- DialogHeaderWidget - Updated required parameters and UI

` `

###### Bug Fixes

- FmiPhoneNumberInput - Adjusted to use emoji renderer for flags due to performance issue of image assets in forms
- MDS site updated to utilize canvaskit per consuming applications

` `

#### 1/5/2024

###### Added

- Update token files in fmi-mineral-dsp and fmi_core. Added new container token. - Both artifacts are updated
- Tab Bar Theme - added dark and light themes and additional tab bar demo outside app bar

` `

#### 1/4/2024

###### Added

- Datetime - Added demos and documentation for default date and time picker
- TimePickerTheme - Added dark and light theme for time picker

` `

#### 1/3/2024

###### Enhancements

- FmiBottomNavigationBar - Update documentation for new build context definitions

` `

#### 1/2/2024

###### Enhancements

- FmiAuthentication - Added global AccountInfo object to maintain current account. Fix for silentToken failures
- AuthorizationService - Added acquireTokenRedirect for web.
- FmiAppBarTop - update build context to new definitions, add additional visible slots on small screens
- FmiTabBar - update build context to new definitions, update medium screens to show underline tab UI instead of tubular tab UI
