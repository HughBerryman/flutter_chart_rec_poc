**Usage**

Primarily used in EWS Forms application.

**Alternatives**

- OOB App Bar

**Parameters**

- title - String, required
- offlineDialogText - String, optional
- showInternet - bool, default false
- showSync - bool, default false
- appBarActionItems - List<AppBarActionItem>, default []
- themeStyle - ThemeStyle, default ThemeStyle.primary
- onBackPressed - Function(), optional
- forceOverflow - bool, default false
- closeIconAppBar - IconData, optional default FontAwesomeIcons.arrowLeft

**Models**

AppBarActionItem

- text - String, required
- icon - IconData, required
- action - Function, required
- isOverflow - bool, required

ThemeStyle enum

- primary
- secondary

`  `
