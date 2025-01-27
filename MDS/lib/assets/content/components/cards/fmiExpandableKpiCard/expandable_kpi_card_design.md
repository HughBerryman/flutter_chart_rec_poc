**Usage**

Object that holds a Fmi Kpi Scorecard, List<dynamic> graph data, and a boolean to display/hide the graph. Recommended to be used in a ListView/GridView. Demo uses a combination of the two. Will require to setup another ListView/GridView to display 2 or 3 columns. 

` `

**Alternatives**

OOB Flutter Widget 

` `

**Parameters**

* kpiScorecard – FmiKpiScorecard, required 
* graph – List<dynamic>, required 
* isShown – bool, optional, default false 

` `

**Models**

* enum FmiKpiScorecardColor 
* primary 
* success 
* error 

` `


KpiScorecard

* metric – String, required 
* lineTwo – String, required 
* lineThree – String, required 
* metricColor – FmiKpiScorecardColor, optional, default primary 
* onTap – Funtion(), optional 

` `

Color Variants

* FmiKpiScorecardColor.primary = primary (default) 
* FmiKpiScorecardColor.success = success  
* FmiKpiScorecardColor.error = error 

` `