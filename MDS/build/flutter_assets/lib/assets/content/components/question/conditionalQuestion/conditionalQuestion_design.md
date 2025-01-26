### Conditional Question 

##### Usage

Used for displaying dynamic dialogs, however the user will need to implement their own dialog widget, result, factory, etc.

##### Parameters

* buttons - List<ConditionalQuestionButton<G>>, required
* onButtonPressed - Function(ConditionalQuestionButton? conditionalQuestionButton, T? dialogResult), required
* initialBadgeText - String, optional
* defaultBadgeText - String, optional
* title - String, optional
* trailing - Widget, optional 
* question - String, optional
* initialButtonPressed - ConditionalQuestionButton, optional
* initialDialogData - T, optional
* isEditable - bool, default true
* conditionalQuestionDialogFactoryBase - ConditionalQuestionDialogFactoryBase<T, G>, optional
* defaultColor - FmiToggleButtonColorOptions, default FmiToggleButtonColorOptions.primary
* type - FmiToggleButtonType, default FmiToggleButtonType.outline

##### Models

enum FmiToggleButtonColorOptions 
* primary
* secondary 
* error
* success

enum FmiToggleButtonType 
* outline
* elevated

class ConditionalQuestionButton<T>
* text - String, required
* value - String, required
* buttonType - ConditionalQuestionButtonType, required
* includeInSummary - bool, default false
* showDialog - bool, default false
* dialogOptions - T, optional
* iconData - IconData, optional
* leadingIconData - IconData, optional

enum ConditionalQuestionButtonType
* unknown
* success
* danger
* standard

`  `