import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class DemoLayout extends StatelessWidget {
  const DemoLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(FMIThemeBase.baseBorderRadiusRound),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const _SpacingLayoutDemo()));
      },
      child: Ink(
        child: Center(
          child: Text(
            'Spacing and Layout Demo',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusRound)),
        height: FMIThemeBase.baseContainerDimension40,
        width: FMIThemeBase.baseContainerDimension275,
      ),
    );
  }
}

class _SpacingLayoutDemo extends StatefulWidget {
  const _SpacingLayoutDemo();

  @override
  State<_SpacingLayoutDemo> createState() => _SpacingLayoutDemoState();
}

class _SpacingLayoutDemoState extends State<_SpacingLayoutDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Center(child: bodySection(context)),
      ),
    );
  }

  Widget bodySection(BuildContext context) {
    const placeholderText = Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      overflow: TextOverflow.ellipsis,
      maxLines: 10,
    );

    List<Widget> _verticalCards = [
      verticalCard(context, placeholderText),
      verticalCard(context, placeholderText),
      verticalCard(context, placeholderText),
      verticalCard(context, placeholderText),
      verticalCard(context, placeholderText),
      verticalCard(context, placeholderText),
    ];

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            left: context.outerGutter, right: context.outerGutter),
        constraints:
            const BoxConstraints(maxWidth: LayoutConstants.maxConstraintWidth),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                vertical: FMIThemeBase.basePadding12,
              ),
              child: FilledButton(
                child: const Text(
                  "Escape Demo",
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Container(
              height: FMIThemeBase.baseContainerDimension475,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
                color: Theme.of(context)
                    .colorScheme
                    .fmiBaseThemeAltSurfaceInverseAltSurface,
              ),
              child: (context.isLarge)
                  ? Row(children: [
                      const Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.all(FMIThemeBase.basePadding4),
                          child: AspectRatio(
                              aspectRatio: 3 / 2, child: Placeholder()),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(
                                  FMIThemeBase.basePadding4),
                              child: placeholderText))
                    ])
                  : Column(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.all(FMIThemeBase.basePadding4),
                            child: AspectRatio(
                                aspectRatio: 5 / 2, child: Placeholder()),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(
                                  FMIThemeBase.basePadding4),
                              child: placeholderText),
                        )
                      ],
                    ),
            ),
            GridView.count(
              padding: const EdgeInsets.symmetric(
                  vertical: FMIThemeBase.basePadding4),
              mainAxisSpacing: FMIThemeBase.basePadding4,
              crossAxisSpacing: FMIThemeBase.basePadding4,
              shrinkWrap: true,
              crossAxisCount: getColumns(),
              children: _verticalCards,
            )
          ],
        ),
      ),
    );
  }

  int getColumns() {
    if (context.isXSmall) {
      return 1;
    } else if (context.isSmall) {
      return 2;
    } else if (context.isMedium) {
      return 3;
    } else {
      return 4;
    }
  }

  Container verticalCard(BuildContext context, Text placeholderText) {
    return Container(
      height: FMIThemeBase.baseContainerDimension475,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(FMIThemeBase.baseBorderRadiusLarge),
        color: Theme.of(context)
            .colorScheme
            .fmiBaseThemeAltSurfaceInverseAltSurface,
      ),
      child: Column(children: [
        const Expanded(
            child: Padding(
          padding: EdgeInsets.all(FMIThemeBase.basePadding4),
          child: Placeholder(),
        )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(FMIThemeBase.basePadding4),
          child: placeholderText,
        ))
      ]),
    );
  }
}
