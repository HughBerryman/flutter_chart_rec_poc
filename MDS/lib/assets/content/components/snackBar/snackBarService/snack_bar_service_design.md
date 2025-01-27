### Snack Bar Service

##### Usage

Displays a snack bar at the bottom of the page. Two versions: dismissible and pinned.  Dismissible will automatically dismiss after 4 seconds.  Pinned requires user to dismiss.

###### Parameters

showDismissibleSnackBar

* text - String, required
* snackBarType - SnackBarType, optional
* snackBarAction - SnackBarAction, optional
* duration - Duration? optional, default 4 seconds
* icon - IconData, optional

showPinnedSnackBar

* text - String, required
* snackBarType - SnackBarType, optional
* snackBarAction - SnackBarAction, optional
* icon - IconData, optional

##### Models

enum SnackBarType

* success
* error
* warning

SnackBarAction - see Flutter

`  `

**Note: Snack bars will appear at the bottom of the application.  Dismissible will dismiss after 4 seconds unless Dismiss is selected.  Pinned will need to be manually dismissed. Selecting a snack bar action will dismiss.**  

`  `