**Usage**

Displays 2-4 lines inside a card. Mainly used to display KP metrics. Can be used in a ListView as a Scorecard in a ListTile.

` `

**Alternatives**

OOB Flutter Widget

` `

**Parameters**
* title – String, required
* metric – String, optional
* unit – String, optional
* subtitle – String, optional
* element – Widget, optional
* trend – ScorecardTrend, optional, default ScorecardTrend.standard
* hasElevation – bool, default true
* hasBorder – bool, optional, default true
* metricColor – ScorecardTrend, optional
* onPressed – Function(), optional
* selectedBehaviorOff – bool, optional, default false
* isChecked – bool, optional, default false
* isTransparent – bool, optional, default false
* isFlush – bool, optional, default false
* isMini – bool, optional, default false
* warningIndicatorOn – bool, optional, default false

` `

**Models**

enum ScorecardTrend
* standard
* up
* down
` `