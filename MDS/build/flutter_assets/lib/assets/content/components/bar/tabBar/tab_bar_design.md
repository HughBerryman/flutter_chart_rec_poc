### Fmi Tab Bar

##### Usage

The tab bar is used inside of a Scaffold in between the App Bar and the Navigation Rail/Bottom Navigation. It is to help display navigate between multiple pages (views) in a single Scaffold.

##### Alternatives

* OOB Tab Bar

##### Parameters

* tabs - List<Tab>, required
* tabBarViews - List<Widget>, required
* pinned - bool, optional (default = false)
* forceElevated - bool, optional (default = false)
* sliverPadding - double, optional (default = FMIThemeBase.basePadding8)
* backgroundColor - Color, optional (default = surface)
* onTap - Function(int), optional
* tabController - TabController, optional
* scrollPhysics - ScrollPhysics, optional (controls the physics for both TabBar and TabBarView)
* isScrollable - bool, optional (default = false)
* floating - bool, optional (default = false)
* snap - bool, optional (default = false)
* displayScrollBehavior - ScrollBehavior, optional (controls the scroll behavior of the ScrollConfiguration & defaults to CustomScrollBehavior.horizontalScrollConfiguration(context))
* displayScrollPhysics - ScrollPhysics, optional (controls the physics of the CustomScrollView)

`  `