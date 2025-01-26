**Usage**

The app bar facilitates the display of content and actions related to the current screen. It offers the versatility of modifying its elements dynamically, and adding action and icon items, with a limit of six items in total. Exceeding this limit will result in an exception being thrown.

It is mandatory to pass a non-null value for the imageSlot and/or title parameter as it is checked with an assert statement. If both are null, an error message will be displayed.

If floating and/or pinned is set to true (pinned takes precendence), the FmiAppBarTop will return a SliverAppBar instead of a default AppBar. This will require it to be wrapped in a supported parent sliver widget.

The action menu badge will display on the vertical ellipisis when action and icon items display in overflow popup menu.

**For Navigation Bar:**
It is highly recommended when passing in destinations (FmiNavigationDestination) that it is supporting both the selectedIcon and icon parameters in each destination item.

**Also, it is recommended to pass in the selectedIndex with an int variable that is used in conjunction with changing views via onDestinatonSelected. If the selectedIndex is null, then it defaults to 0.**

**Parameters**

- leading - Widget, optional
- imageSlot - Widget, optional
- title - String, optional
- actionItems - List<AppBarTopComponent>, optional
- iconItems - List<AppBarTopComponent>, optional
- fab - bool, optional default false
- fabOnTap - Function(), optional
- hideNavLabels - bool, optional default false
- selectedIndex - int, optional default 0
- destinations - List<FmiNavigationDestination>, optional
- floating - bool, optional default false
- pinned - bool, optional default false
- onDestinationSelected - Function(int), optional
- isElevated - bool, optional default true
- showActionMenuBadge - bool, optional default false
- actionMenuBadgeColor - BadgeColor, optional default BadgeColor.danger
- fabIcon - IconData, optional default FontAwesomeIcons.solidRocket
- fabTheme - FabThemeEnum, optional default (backgroundColor = primary, iconColor = chartGrayscaleGray0)

**Models**

FmiNavigationDestination

- label - String
- icon - IconData, optional
- selectedIcon - IconData, optional
- svgAsset - SvgAsset, optional
- selectedSvgAsset - SvgAsset, optional

AppBarTopComponent

- label - Widget, optional (Recommend Text Widget - shown in kebab/overflow menu)
- component - Widget, optional
- onTap - Function(), optional

BadgeColor

- primary
- primaryContainer
- secondary
- tertiary
- success
- warning
- danger
- inverseAltSurface
- altSurface
- surfaceVariant
- secondaryContainer
- surface

FabThemeEnum

- primary
- primaryContainer
- secondary
- secondaryContainer
- tertiary
- tertiaryContainer
- hero

`  `
