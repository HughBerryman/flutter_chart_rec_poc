**Usage**

Displays six different Kpi’s into one singular card, each containing their own modifiable property. It should be used inside a Container/SizedBox or a widget with a restraining width value. The widget used in trailing and recommended to display mini cards is the FmiMineScorecard.

` `

**Alternatives**

Custom Flutter Component

` `

**Parameters**

* overviewIcon – IconData, required
* overviewTitle – String, required
* trailing – Widget, optional
* onTap – Function(), optional
* overviewBars – List<FmiOverviewBar>, required
* menuItems – List<PopupMenuItem>, optional

` `

**Models**

class FmiOverviewBar
* model – FmiOverviewBarModel, required
* barRange – FmiKpiProgressRange, optional
* barColor – NonTargetedBarColor, optional

` `

class FmiOverviewBarModel
* height – double, optional, default FMIThemeBase.baseContainerHeightSmall
* chartTitle – String, optional
* metric – String, optional
* chartTarget – double, optional, default doublemax.Finite
* chartValue – double, optional
* chartMaxValue – double, optional
* chartSubtitle – String, optional
* chartSubtext – String, optional
* avatarImg – String, optional
* avatarDisplayName – String, optional
* chartTargetLabel – String, optional, default ‘Target’

` `

class FmiKpiProgressRange
* min - double, required
* max - double, required

` `


enum NonTargetedBarColor
* primary
* onSurface

` `

Trailing Widget Recommendation: FmiMineScorecard
* title – String, required
* metric – String, required
* target – double, required
* value – double, required
* onPressed – Function(), optional

` `