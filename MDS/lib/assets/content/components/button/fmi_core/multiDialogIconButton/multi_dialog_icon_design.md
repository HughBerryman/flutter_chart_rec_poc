**Usage**

The Fmi Multi Dialog Icon Button is primarily used among forms.

` `

**Parameters**

* disabled - bool, default false
* items - List<FmiMultiDialogIconButtonModel<T, G>>, optional
* baseDialogIconButtonFactory - BaseFmiDialogFactory<T, G>,optional
* onSelectedChanged - Function(List<FmiMultiDialogIconButtonResultModel> values), optional

` `

**Models**

class FmiMultiDialogIconButtonModel
* value - String, optional
* text - String, optional
* icon - IconData, optional
* svgIcon - FASafeIcons, optional
* iconColor - IconColors, default IconColors.primary,
* initialIsSelected - bool, default false
* initialDialogData - T, optional
* dialogOptions - G, optional

` `

class FmiMultiDialogIconButtonResultModel
* value - String, optional
* dialogData - T, optional

` `

enum IconColors
* primary
* warning

`  `