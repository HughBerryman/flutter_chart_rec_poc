import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoFilledButton extends StatelessWidget {
  const DemoFilledButton({super.key});

  List<Widget> getFilledButtons() {
    return [
      FilledButton(
        onPressed: () {},
        child: const Text('Enabled'),
      ),
      FilledButton.icon(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.chevronLeft,
        ),
        label: const Text('Icon'),
      ),
      const FilledButton(
        onPressed: null,
        child: Text('Disabled'),
      ),
    ];
  }

  List<Widget> getTonalButtons() {
    return [
      FilledButton.tonal(
        onPressed: () {},
        child: const Text('Enabled'),
      ),
      FilledButton.tonalIcon(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.chevronLeft,
        ),
        label: const Text('Icon'),
      ),
      const FilledButton.tonal(
        onPressed: null,
        child: Text('Disabled'),
      ),
    ];
  }

  List<Widget> getSecondaryButtons(BuildContext context) {
    return [
      FilledButton(
        style: ButtonStyleHelper.getSecondaryFilledButtonStyle(context),
        onPressed: () {},
        child: const Text('Enabled'),
      ),
      FilledButton.icon(
        style: ButtonStyleHelper.getSecondaryFilledButtonStyle(context),
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.chevronLeft,
        ),
        label: const Text('Icon'),
      ),
      FilledButton(
        style: ButtonStyleHelper.getSecondaryFilledButtonStyle(context),
        onPressed: null,
        child: const Text('Disabled'),
      ),
    ];
  }

  List<Widget> getHeroButtons(BuildContext context) {
    return [
      FilledButton(
        style: ButtonStyleHelper.getHeroFilledButtonStyle(context),
        onPressed: () {},
        child: const Text('Enabled'),
      ),
      FilledButton.icon(
        style: ButtonStyleHelper.getHeroFilledButtonStyle(context),
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.chevronLeft,
        ),
        label: const Text('Icon'),
      ),
      FilledButton(
        style: ButtonStyleHelper.getHeroFilledButtonStyle(context),
        onPressed: null,
        child: const Text('Disabled'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(
            title: 'Filled Button', padding: FMIThemeBase.basePaddingSmall),
        ButtonListView(
          list: getFilledButtons(),
        ),
        ButtonListView(
          list: getTonalButtons(),
        ),
        ButtonListView(
          list: getSecondaryButtons(context),
        ),
        ButtonListView(
          list: getHeroButtons(context),
        ),
      ],
    );
  }
}
