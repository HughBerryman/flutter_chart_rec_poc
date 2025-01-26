import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/enums/enums.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/models/models.dart';

class FormStepper extends StatefulWidget {
  final List<FormStep> formSteps;
  final AppBar? appBar;

  const FormStepper({Key? key, required this.formSteps, this.appBar})
      : super(key: key);

  @override
  _FormStepperState createState() => _FormStepperState();
}

class _FormStepperState extends State<FormStepper> {
  // WIDGET CONTROLLERS
  final PageController _pageController = PageController(initialPage: 0);

  // WIDGET VISIBILITY VARIABLES
  bool _formSliderDisplayed = true;
  bool _appBarDisplayed = true;

  // WIDGET INDEXING VARIABLES
  int _index = 0;
  int _pageCount = 0;
  int _pageDivisions = 0;
  List<ScrollController> scrollControllers = <ScrollController>[];

  @override
  void initState() {
    _pageCount = widget.formSteps.length - 1;
    _pageDivisions = widget.formSteps.length - 1;

    for (int i = 0; i < widget.formSteps.length; i++) {
      scrollControllers.add(ScrollController());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (updatedIndex) => {
            setState(() {
              _showHiddenFormItems();
              _index = updatedIndex;
            })
          },
          children: widget.formSteps
              .map((formStep) => NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification) {
                    _inspectScroll(scrollNotification, context);
                    return false;
                  },
                  child: SingleChildScrollView(
                      controller:
                          scrollControllers[widget.formSteps.indexOf(formStep)],
                      child: formStep.formStepCard)))
              .toList(),
        ),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: SlidingVisibilityWidget(
            slidingVisibilityDirection: SlidingVisibilityDirection.down,
            visible: _formSliderDisplayed,
            child: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.formBackground,
                ),
                height: 60,
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => {_decrementIndex()},
                      color: Theme.of(context).colorScheme.primary,
                      icon: const Icon(FontAwesomeIcons.arrowLeft),
                    ),
                    Expanded(
                      child: Stack(alignment: Alignment.center, children: [
                        SliderTheme(
                            data: SliderThemeData(
                                thumbColor:
                                    Theme.of(context).colorScheme.primary,
                                activeTrackColor:
                                    Theme.of(context).colorScheme.primary,
                                // TO DO: WHEN WE HAVE A TOKEN DEFINED FOR THIS COLOR, WILL NEED UPDATED
                                inactiveTrackColor:
                                    const Color.fromRGBO(225, 226, 229, 1),
                                // TO DO: WHEN WE HAVE A TOKEN DEFINED FOR THIS HEIGHT, WILL NEED UPDATED
                                trackHeight: 12,
                                activeTickMarkColor: Colors.transparent,
                                inactiveTickMarkColor: Colors.transparent),
                            child: Slider(
                              max: _pageCount.toDouble(),
                              divisions: _pageDivisions,
                              onChanged: _sliderIndexUpdated,
                              value: _index.toDouble(),
                              label: 'Page ${_index + 1}',
                            )),
                        IgnorePointer(
                          child: _getSliderOverlay(_index),
                        )
                      ]),
                    ),
                    IconButton(
                        onPressed: () => {_incrementIndex()},
                        color: Theme.of(context).colorScheme.primary,
                        icon: const Icon(FontAwesomeIcons.arrowRight))
                  ],
                ),
              ),
            ),
          ),
        ),
        if (widget.appBar != null)
          SizedBox(
            height: 56,
            child: SlidingVisibilityWidget(
              slidingVisibilityDirection: SlidingVisibilityDirection.up,
              visible: _appBarDisplayed,
              child: widget.appBar!,
            ),
          )
      ],
    );
  }

  Widget _getSliderOverlay(int index) {
    List<Widget> dividers = [];

    for (int i = 0; i < widget.formSteps.length; i++) {
      FormStep formStep = widget.formSteps[i];
      Color? dividerColor = i != index
          ? Theme.of(context).colorScheme.onPrimary
          : Colors.transparent;
      Widget divider;

      if (formStep.formStepStatus == FormStepStatus.incomplete) {
        divider =
            Icon(FontAwesomeIcons.solidCircle, size: 8, color: dividerColor);
      } else {
        divider = Icon(FontAwesomeIcons.check, size: 10, color: dividerColor);
      }

      if (i == 0 || i == widget.formSteps.length - 1) {
        dividers.add(Padding(
          child: divider,
          padding: const EdgeInsets.only(left: 3, right: 3),
        ));
      } else {
        dividers.add(divider);
      }

      if (i != widget.formSteps.length - 1) {
        dividers.add(const Spacer());
      }
    }

    Widget result = Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: dividers,
      ),
    );

    return result;
  }

  void _sliderIndexUpdated(double updatedIndex) {
    setState(() {
      _showHiddenFormItems();
      _index = updatedIndex.toInt();
      _jumpToCurrentIndex();
    });
  }

  void _decrementIndex() {
    if (_index != 0) {
      setState(() {
        _showHiddenFormItems();
        _index--;
        _animateToCurrentIndex();
      });
    }
  }

  void _incrementIndex() {
    if (_index < _pageCount) {
      setState(() {
        _showHiddenFormItems();
        _index++;
        _animateToCurrentIndex();
      });
    }
  }

  void _jumpToCurrentIndex() {
    setState(() {
      _pageController.jumpToPage(_index.toInt());
    });
  }

  void _animateToCurrentIndex() {
    setState(() {
      _pageController.animateToPage(_index.toInt(),
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    });
  }

  void _showHiddenFormItems() {
    _showAppBar();
    _showFormSlider();
  }

  void _inspectScroll(
      ScrollNotification scrollNotification, BuildContext context) {
    ScrollController currentScrollController = scrollControllers[_index];

    if (currentScrollController.offset < 10) {
      // USER IS AT OR NEAR THE TOP OF THE CARD
      _showAppBar();
      _showFormSlider();
    } else if (currentScrollController.position.extentAfter < 10) {
      // USER IS AT THE BOTTOM OF THE CARD
      _showAppBar();
      _showFormSlider();
    } else {
      // USER HAS SCROLLED DOWN THE CARD
      _hideAppBar();
      _hideFormSlider();
    }
  }

  void _hideFormSlider() {
    setState(() {
      _formSliderDisplayed = false;
    });
  }

  void _showFormSlider() {
    setState(() {
      _formSliderDisplayed = true;
    });
  }

  void _hideAppBar() {
    setState(() {
      _appBarDisplayed = false;
    });
  }

  void _showAppBar() {
    setState(() {
      _appBarDisplayed = true;
    });
  }
}
