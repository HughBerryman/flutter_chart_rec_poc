**Usage**

Can be used as a stand alone core component. Also, a parameter in both the Fmi Material Overview and Fmi Mine Overview core components.

` `

**Parameters**

* model – FmiOverviewBarModel, required
* barRange – FmiKpiProgressRange, optional
* barColor – NonTargetedBarColor, optional

` `

**Models**

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
* chartTargetLabel – String, optional

` `

class FmiKpiProgressRange
* min – double, required
* max – double, required

` `

enum NonTargetedBarColor
* primary
* onSurface

` `