**Usage**

Card layout to display KPI metric graph using a modern UI design.

` `

**Alternatives**

Custom Flutter Component

` `

**Parameters**

* startSlot – Widget, optional
* overline – String, optional
* title – String, required
* subtitle – String, optional
* middleGraph – Widget, optional
* kpi – String, required
* kpiUnit – String, optional
* kpiTrend – FmiKpiTrend, required
* onTap – Function(), optional

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