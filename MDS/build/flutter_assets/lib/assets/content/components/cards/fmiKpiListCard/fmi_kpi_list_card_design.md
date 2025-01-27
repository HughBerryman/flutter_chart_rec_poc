**Usage**

Card layout to display KPI metric using a modern UI design. If the kpi parameter is not passed/specified, it will use an alternative variant with the FmiKpiTrend as the headline.

` ` 

**Alternatives**

Custom Flutter Component

` `

**Parameters**

* startSlot – Widget, optional
* overline – String, optional
* title – String, required
* subtitle – String, optional
* kpi – String, optional
* kpiUnit – String, optional 
* kpiTrend – FmiKpiTrend, required 
* showPercentAndValue – bool, optional, default false 
* showAsPercent – bool, optional, default true 
* showTrendIconTwice – bool, optional, default true 
* showUnitOnTrend – bool, optional, default true 
* onTap – Function(), optional
* backgroundColor - KpiBackgroundColorEnum, optional, default KpiBackgroundColorEnum.surface

` `

**Models**

class FmiKpiTrend
* trend - KpiTrendEnum, required
* target – double, required
* value – double, required
* decimalPlaces – optional, default 0

` `

enum KpiTrendEnum
* up 
* down 
* flat

` `

enum KpiBackgroundColorEnum
* surface
* transparent

` `