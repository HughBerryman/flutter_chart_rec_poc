**Usage**

Drawers are usually used with the Scaffold drawer property and contain a list of items. The header contains leading, title, and subtitle parameters. The leading is for FmiAvatar with recommended large size, and the recommended use-case for title and subtitle is employee name and position. The footer is optional and contains a leading, label, trailing, and onTapped event. The recommended use-case for the footer is app versioning information. If Fmi Drawer Item trailing is text, it is recommended to limit the text preferably to 10 or less characters. 

The Fmi Expansion Tile will be used to group similar navigation items to make the drawer less crowded. It is recommended to use no more than 5 children. The Fmi Drawer Label's recommend use-case would be to divide similar navigation items into groups.

` `

**Alternatives**

* OOB Drawer
* OOB Navigation Drawer

` `

**Parameters**
* leading - FmiAvatar, optional
* title - String, required
* subtitle - String, optional
* items - List<FmiDrawerItem>, required
* footer - FmiDrawerItem, optional

` `

**Models**

FmiDrawerItem
* leading - IconData, optional
* label - String, required
* trailing - Widget, optional
* onTapped - Function(FmiDrawerItem), optional
* enabled - Boolean, optional default true

` `

FmiDrawerExpansionTile extends FmiDrawerItem
* children - List<FmiDrawerItem>, optional
* selectedIndex - int, required
* leading - IconData, optional
* label - String, required
* enabled - Boolean, optional default true


` `

FmiDrawerLabel extends FmiDrawerItem
* hasDivider - boolean, optional default false
* label - String, required


` `
