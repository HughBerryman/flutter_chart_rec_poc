### Fmi Navigation Rail

##### Usage

Intended to be used for Medium (context.isMedium) and Large (context.isLarge) screens.  The trailing widget will be grouped with the destinations with the isFooter default.  If isFooter is set to true, the trailing widget will be positioned at the bottom. 

onDestinationSelected call when one ot the destinations is selected.  Needed to keep track of the index of the selected and call 'setState' to rebuild the navigation rail.

It is important to note that the elevation property does not work in a nested scaffold because of the widget structure

**Note**: Navigation rails shouldn't be used for small size screens and may result in overflow issues.

##### Alternatives

* FmiAppBarTop
* OOB NavigationRail

##### Parameters

* destinations - List<FmiNavigationDestination>, required 
* selectedIndex - int, required
* labelType - NavigationRailLabelType, optional 
* leading - Widget, optional
* trailing - Widget, optional
* isFooter - bool, optional default false
* onDestinationSelected - Function(int), optional
* showElevation - bool, optional default true

##### Models

class FmiNavigationDestination 
* label - String label;
* icon - IconData, optional
* selectedIcon - IconData, optional
* svgAsset - SvgAsset, optional
* selectedSvgAsset - SvgAsset, optional
* useBadge - bool, optional default false

**either icon or svgAsset is required**

class SvgAsset
* assetName - String, required 
* package - String, optional


`  `