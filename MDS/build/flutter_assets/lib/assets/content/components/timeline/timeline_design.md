### Fmi Timeline

##### Usage

A vertical Timeline in a column-style layout where it displays one or more steps and within each step can contain substeps.

Four TimelineStepState variations are supported:
* TimelineStepState.notStarted,
* TimelineStepState.inProgress
* TimelineStepState.success
* TimelineStepState.error

`  `
##### Alternatives

N/A

`  `
##### Parameters

FmiTimeline:
* steps - List<TimeLineStep>, required

##### Models:

class TimelineStep
* state - TimelineStepState, required
* title - String, optional
* assignment - String, optional
* bodyText - String, optional
* subSteps - List<TimelineStepSubStep>, optional
* onTapped - Function(), optional
* dateTime - DateTime, optional
* iconOverride - IconData, optional
* iconColorOverride - Color, optional
* iconBackgroundOverride - Color, optional
* connectingLineColorOverride - Color, optional
* showSubstepConnectingLine - bool, optional
* commentBody - String, optional
* link - Uri, optional 
* trailingButtonCallback - Function?, optional
* trailingButtonIconOverride - IconData?, optional
* trailingButtonIconColorOverride - Color?, optional

enum TimelineStepState
* notStarted
* inProgress
* success
* error

class TimelineStepSubStep
* title - String, optional
* bodyText - String, optional
* iconData - IconData, optional
* onTapped - Function(), optional
* dateTime - DateTime, optional
* timelineIconOverride - IconData, optional
* timelineIconColorOverride - Color, optional
* commentBody - String, optional

`  `