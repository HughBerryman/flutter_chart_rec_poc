import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoNavigationRailSvgs extends StatelessWidget {
  const DemoNavigationRailSvgs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentSubheader(title: 'With Svgs'),
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
  int _selectedIndex = 0;
  bool _toggle = false;
  bool useBadges = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  late List<FmiNavigationDestination> destinations;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    destinations = <FmiNavigationDestination>[
      FmiNavigationDestination(
          useBadge: useBadges,
          svgAsset: SvgAsset(
              assetName: 'assets/images/misc-svgs/department.svg',
              package: 'fmi_core'),
          label: 'Department'),
      FmiNavigationDestination(
          svgAsset: SvgAsset(
              assetName: 'assets/images/misc-svgs/news.svg',
              package: 'fmi_core'),
          label: 'News',
          useBadge: useBadges),
    ];

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Navigation Rail Demo'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              if (context.isLarge || context.isMedium)
                FmiNavigationRail(
                  selectedIndex: _selectedIndex,
                  destinations: destinations,
                  onDestinationSelected: (int index) => setState(() {
                    _selectedIndex = index;
                  }),
                  isFooter: true,
                  trailing: IconButton.filledTonal(
                    icon: _toggle
                        ? const FaIcon(FontAwesomeIcons.lightMoon)
                        : const FaIcon(FontAwesomeIcons.lightSunBright),
                    onPressed: () {
                      setState(() {
                        _toggle = !_toggle;
                      });
                    },
                  ),
                  leading: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => const ConfirmationDialog(
                                      title: "Tapped!",
                                      message: "Menu button has been tapped.",
                                    ));
                          },
                          icon: const FaIcon(FontAwesomeIcons.bars)),
                      const SizedBox(height: FMIThemeBase.basePadding10),
                      Theme(
                        data: FmiFloatingActionButtonTheme.zeroElevation(
                            context,
                            FmiFloatingActionButtonTheme.primary(context)),
                        child: FloatingActionButton(
                            child: const FaIcon(FontAwesomeIcons.plus),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => const ConfirmationDialog(
                                        title: "Tapped!",
                                        message:
                                            "Floating action button has been tapped.",
                                      ));
                            }),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FilledButton(
                        child: const Text('Click to Escape Demo'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    const Padding(
                        padding: EdgeInsets.all(FMIThemeBase.basePadding6)),
                    FilledButton(
                        child: const Text('Show Badges'),
                        onPressed: () {
                          setState(() {
                            useBadges = !useBadges;
                          });
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
