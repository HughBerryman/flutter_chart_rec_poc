**Usage**

Recommended usage is context.isSmall and context.isXSmall for bottom navigation bar in conjunction with FmiNavigationRail for context.isLarge and context.isMedium.  

If the number of navigation destinations exceed the maximum slots, the last slot will become allocated to be an overflow button 'more' that will move any overflow navigation items into a Modal Bottom Sheet.

` `

**Alternatives**

* OOB Flutter NavigationBar, BottomNavigationBar

` `

**Parameters**

* destinations - List<FmiNavigationDestination>, required
* currentIndex - int, required
* showUnselectedLabels - bool, optional default false
* showSelectedLabels - bool, optional default true 
* onTap - Function(int), optional
* enableFab - bool, optional default false
* onFabTap - Function(), optional
* forceDarkMode - bool, optional default false
* fabIcon - IconData, optional default FontAwesomeIcons.solidRocket
* fabTheme - FabThemeEnum, optional default (backgroundColor = primary, iconColor = chartGrayscaleGray0)

` `

**Models**

class FmiNavigationDestination 
* label - String label, required
* icon - IconData, optional
* selectedIcon - IconData, optional
* svgAsset - SvgAsset, optional
* selectedSvgAsset - SvgAsset, optional
* **either icon or svgAsset is required**

` `

class SvgAsset
* assetName - String, required 
* package - String, optional

` `

FabThemeEnum
* primary
* primaryContainer
* secondary
* secondaryContainer
* tertiary
* tertiaryContainer
* hero

`  `