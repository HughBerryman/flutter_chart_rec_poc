**Usage**

Displays a Sync Fusion Linear Gauge. The Linear Gauge can be combined with other Flutter widgets for title and/or icon, as well as sizing, positioning, etc. 

**Note:** The progress bar will create an offset when certain markers are being used and the offset will also be impacted by parameter data. This will need to be accounted in utlization of the core component. The offset will cause the linear gauge to not be left aligned and will behave similar to padding.

`  `

**Alternatives**

* SF Linear Gauge

`  `

**Parameters**

* title - optional, String
* unit - required, String
* trackLength - required, double
* progressValue - required, double
* targetValue - optional, double
* varianceValue - optional, double
* showTargetValue - bool, optional default true
* showTargetBar - bool, optional default true
* showTrackLength - bool, optional default true
* showVariance - bool, optional default true
* numberFormat - String, optional default "#,###.##"
* colorScheme - ProgressBarColorScheme, optional default ProgressBarColorScheme.standard

`  `

**Models**

enum ProgressBarColorScheme
* standard (green/red)
* primary (primary)

`  `