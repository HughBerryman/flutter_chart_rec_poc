**Usage**

Used to display search bar with overlay for employee directory search single select.

` `

**Parameters**

* hideElevation – bool, optional, default false
* useCircleShape – bool, optional, default false
* useBorder – bool, optional, default false
* useBadgeSystem – bool, optional, default false
* enabled – bool, optional, default true
* backgroundColor – Color, optional, default Theme.of(context).colorScheme.surface
* leadingIconColor – Color, optional, default Theme.of(context).colorScheme.onSurface
* suffixIconColor – Color, optional, default Theme.of(context).colorScheme.secondary
* onFocusChanged – Function(bool isFocused), optional
* endpointUrlRelativePath – String, optional
* onTapEmployee – Function(Employee selectedEmployee), required
* onTapTrailing – Function(Employee selectedEmployee), optional
* maxResultsListHeight - double, optional, default FMIThemeBase.baseContainerDimension400
* hideOverlayOnEmployeeSelected – bool, optional, default false
` `