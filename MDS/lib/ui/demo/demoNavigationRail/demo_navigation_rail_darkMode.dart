import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoNavigationRailDarkMode extends StatelessWidget {
  const DemoNavigationRailDarkMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentSubheader(
            title: 'Force Dark Mode with Fa Icons and Nested Scaffold'),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: FMIThemeBase.basePaddingLarge,
                  bottom: FMIThemeBase.basePaddingLarge),
              child: FilledButton(
                child: const Text("Show Navigation Rail"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const _CustomPage()));
                },
              ),
            )
          ],
        )
      ],
    );
  }
}

class _CustomPage extends StatefulWidget {
  const _CustomPage({Key? key}) : super(key: key);

  @override
  State<_CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<_CustomPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                const DemoNavigationRailDarkModeWrapper(),
              Expanded(
                child: Center(
                  child: Scaffold(
                    appBar: AppBar(
                      title: const Text('Navigation Rail Demo'),
                      automaticallyImplyLeading: false,
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.all(FMIThemeBase.basePadding4),
                            child: FilledButton(
                                child: const Text('Click to Escape Demo'),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
