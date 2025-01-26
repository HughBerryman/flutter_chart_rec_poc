**Usage**

Displays a list of Kpi’s (FmiOverviewBar) into one singular card, each containing their own modifiable property. It is to be used inside a Container/SizedBox or a widget with a restraining width value. It also supports a kebab menu parameter.

` `

**Alternatives**

Custom Flutter Component

` `

**Parameters**
* overviewIcon – IconData, optional
* overviewTitle – String, optional
* chipSectionTitle – String, optional
* utilSectionTitle – String, optional
* onTap – Function(), optional
* overviewBars – List<FmiOverviewBar>, required
* menuItems – List<PopupMenuItem>, optional
* overviewChips – List<FmiOverviewChip>, optional
* overviewUtilCharts – List<FmiOverviewUtilChart>, optional

` `

**Models**

class FmiOverviewBar
* model – FmiOverviewBarModel, required
* barRange – FmiKpiProgressRange, optional
* barColor – NonTargetedBarColor, optional

` `

class FmiOverviewChip
* chipLabel – String, required
* chipValue – double, required

` `

class FmiOverviewUtilChart
* utilChart – FmiOverviewUtilChartModel, required
* utilChartLabel – String, required

` `

class FmiOverviewBarModel
* height – double, optional, default FMIThemeBase.baseContainerHeightSmall
* chartTitle – String, optional
* metric – String, optional
* chartTarget – double, optional, default double.maxFinite
* chartValue – double, optional
* chartMaxValue – double, optional
* chartSubtitle – String, optional
* chartSubtext – String, optional
* avatarImg – String, optional
* avatarDisplayName – String, optional
* chartTargetLabel – String, optional, default ‘Target’

` `

class FmiOverviewUtilChartModel
* value – double, required
* total – double, required

` `

class FmiKpiProgressRange
* min - double, required
* max - double, required

` `

enum NonTargetedBarColor
* primary
* onSurface

` `