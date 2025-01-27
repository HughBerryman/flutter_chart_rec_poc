**Example**

```dart
class BasicBottomNavBar extends StatefulWidget {
  const BasicBottomNavBar({Key? key})
      : super(key: key);




  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<BasicBottomNavBar> {
  int _selectedIndex = 0;
     bool includeLabel = false;

  static const List<Widget> _pages = <Widget>[
    _CustomPage1(),
    _CustomPage2(),
    _CustomPage3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Bottom Navigation Bar Demo'),
      ),
      body: Column(
        children: [
                  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(FMIThemeBase.basePaddingLarge),
              child: Checkbox(
                value: includeLabel,
                onChanged: (bool? value) {
                  setState(() {
                    includeLabel = value!;
                  });
                },
              ),
            ),
            const Text("Show Label")
          ],
        ),
          Center(child: _pages.elementAt(_selectedIndex)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidBuilding), label: 'Location'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidCar), label: 'Directions'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: includeLabel,
        showUnselectedLabels: includeLabel,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class _CustomPage1 extends StatelessWidget {
  const _CustomPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding12),
            child:
                FaIcon(FontAwesomeIcons.user, size: FMIThemeBase.baseIconLarge),
          ),
          _CloseButton()
        ],
      ),
    );
  }
}

class _CustomPage2 extends StatelessWidget {
  const _CustomPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding12),
            child: FaIcon(FontAwesomeIcons.building,
                size: FMIThemeBase.baseIconLarge),
          ),
          _CloseButton()
        ],
      ),
    );
  }
}

class _CustomPage3 extends StatelessWidget {
  const _CustomPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: FMIThemeBase.basePadding12),
            child:
                FaIcon(FontAwesomeIcons.car, size: FMIThemeBase.baseIconLarge),
          ),
          _CloseButton()
        ],
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      icon: const FaIcon(
        FontAwesomeIcons.xmark,
      ),
      label: const Text('Close Demo'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}


```
