import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component_subheader.dart';

class DemoTextField extends StatefulWidget {
  const DemoTextField({super.key});

  @override
  State<DemoTextField> createState() => _DemoTextFieldState();
}

class _DemoTextFieldState extends State<DemoTextField> {
  var isEnabled = true;
  TextEditingController controller = TextEditingController();

  Option? selectedOption = Option.trailingIcon;

  final List<String> options = [
    'Text Only',
    'Leading Icon',
    'Trailing Icon',
    'Leading & Trailing Icon',
  ];

  Type? selectedType = Type.leadingIconTrailingIcon;

  final List<String> types = [
    'Leading Icon-Trailing Icon',
    'Leading Icon-Trailing IconButton',
    'Leading IconButton-Trailing Icon',
    'Leading IconButton-Trailing IconButton',
  ];

  Widget? leading;
  Widget? trailing;

  Widget icon = const Padding(
    padding: EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding6),
    child: SizedBox(
      height: FMIThemeBase.baseIcon20,
      width: FMIThemeBase.baseIcon20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: FMIThemeBase.baseIconSmall,
          ),
        ],
      ),
    ),
  );

  Widget iconButton = Padding(
    padding: const EdgeInsets.symmetric(horizontal: FMIThemeBase.basePadding6),
    child: IconButton(
      icon: const FaIcon(
        FontAwesomeIcons.magnifyingGlass,
        size: FMIThemeBase.baseIconSmall,
      ),
      onPressed: () {},
    ),
  );

  Widget leadingTonalButton = Padding(
    padding: const EdgeInsets.only(
      left: FMIThemeBase.basePadding2,
      right: FMIThemeBase.basePadding6,
    ),
    child: IconButton.filledTonal(
      icon: const FaIcon(
        FontAwesomeIcons.magnifyingGlass,
        size: FMIThemeBase.baseIconSmall,
      ),
      onPressed: () {},
    ),
  );

  Widget trailingTonalButton = Padding(
    padding: const EdgeInsets.only(
      left: FMIThemeBase.basePadding6,
      right: FMIThemeBase.basePadding2,
    ),
    child: IconButton.filledTonal(
      icon: const FaIcon(
        FontAwesomeIcons.magnifyingGlass,
        size: FMIThemeBase.baseIconSmall,
      ),
      onPressed: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: FMIThemeBase.basePadding6),
                child: Checkbox(
                  value: isEnabled,
                  onChanged: (value) {
                    setState(() {
                      isEnabled = !isEnabled;
                    });
                  },
                ),
              ),
              Text(
                isEnabled
                    ? 'All Text Fields Enabled'
                    : 'All Text Fields Disabled',
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Options:',
            ),
            DropdownButton<Option>(
              value: selectedOption,
              items: Option.values.map((Option option) {
                return DropdownMenuItem<Option>(
                    value: option, child: Text(option.displayText));
              }).toList(),
              onChanged: (Option? newValue) {
                setState(() {
                  selectedOption = newValue;
                });
              },
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Types:',
            ),
            DropdownButton<Type>(
              value: selectedType,
              items: Type.values.map((Type type) {
                return DropdownMenuItem<Type>(
                    value: type, child: Text(type.displayText));
              }).toList(),
              onChanged: (Type? newValue) {
                setState(() {
                  selectedType = newValue;
                });
              },
            ),
          ],
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
            child: ComponentSubheader(title: 'Text Field Underline')),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          child: getLabelWidget(
            context,
            isEnabled,
            controller,
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
            child: ComponentSubheader(
                title: 'Text Field FmiInputDecorationTheme.inverseAltSurface')),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          child: Theme(
            data: FmiInputDecorationTheme.inverseAltSurface(context),
            child: getLabelWidget(
              context,
              isEnabled,
              controller,
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
            child: ComponentSubheader(
                title:
                    'Text Field FmiInputDecorationTheme.defaultOutlineBorderTheme')),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          child: Theme(
            data: FmiInputDecorationTheme.defaultOutlineBorderTheme(context),
            child: getLabelWidget(
              context,
              isEnabled,
              controller,
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
            child: ComponentSubheader(
                title: 'Text Field FmiInputDecorationTheme.defaultNoBorder')),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          child: Theme(
            data: FmiInputDecorationTheme.defaultNoBorder(context),
            child: getHintWidget(
              context,
              isEnabled,
              controller,
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
            child: ComponentSubheader(
                title:
                    'Text Field FmiInputDecorationTheme.defaultNoBorderDense')),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: FMIThemeBase.basePadding6),
          child: Theme(
            data: FmiInputDecorationTheme.defaultNoBorderDense(context),
            child: getHintWidget(
              context,
              isEnabled,
              controller,
            ),
          ),
        ),
      ],
    );
  }

  Widget getLabelWidget(
      BuildContext context, bool isEnabled, TextEditingController controller) {
    updateIcons(selectedOption!, selectedType!, false);
    return TextField(
        controller: controller,
        enabled: isEnabled,
        decoration: InputDecoration(
          labelText: 'Label Text',
          prefixIcon: leading,
          suffixIcon: trailing,
        ));
  }

  Widget getHintWidget(
      BuildContext context, bool isEnabled, TextEditingController controller) {
    updateIcons(selectedOption!, selectedType!, true);
    return TextField(
      controller: controller,
      enabled: isEnabled,
      decoration: InputDecoration(
          prefixIcon: leading, suffixIcon: trailing, hintText: 'Hint Text'),
    );
  }

  void updateIcons(Option option, Type type, bool filled) {
    switch (option) {
      case Option.textOnly:
        leading = null;
        trailing = null;
        break;
      case Option.leadingIcon:
        switch (type) {
          case Type.leadingIconTrailingIcon:
          case Type.leadingIconTrailingIconButton:
            leading = icon;
            break;
          case Type.leadingIconButtonTrailingIcon:
          case Type.leadingIconButtonTrailingIconButton:
            leading = filled ? leadingTonalButton : iconButton;
            break;
        }
        trailing = null;
        break;
      case Option.trailingIcon:
        switch (type) {
          case Type.leadingIconTrailingIcon:
          case Type.leadingIconButtonTrailingIcon:
            trailing = icon;
            break;
          case Type.leadingIconTrailingIconButton:
          case Type.leadingIconButtonTrailingIconButton:
            trailing = filled ? trailingTonalButton : iconButton;
            break;
        }
        leading = null;
        break;
      case Option.leadingAndTrailingIcon:
        if (type == Type.leadingIconTrailingIcon ||
            type == Type.leadingIconTrailingIconButton) {
          leading = icon;
        } else {
          leading = filled ? leadingTonalButton : iconButton;
        }

        if (type == Type.leadingIconTrailingIcon ||
            type == Type.leadingIconButtonTrailingIcon) {
          trailing = icon;
        } else {
          trailing = filled ? trailingTonalButton : iconButton;
        }

        break;
    }
  }
}

enum Option {
  textOnly,
  leadingIcon,
  trailingIcon,
  leadingAndTrailingIcon,
}

extension OptionExtension on Option {
  String get displayText {
    switch (this) {
      case Option.textOnly:
        return 'Text only';
      case Option.leadingIcon:
        return 'Leading only';
      case Option.trailingIcon:
        return 'Trailing only';
      case Option.leadingAndTrailingIcon:
        return 'Leading and trailing';
    }
  }
}

enum Type {
  leadingIconTrailingIcon,
  leadingIconTrailingIconButton,
  leadingIconButtonTrailingIcon,
  leadingIconButtonTrailingIconButton,
}

extension TypeExtension on Type {
  String get displayText {
    switch (this) {
      case Type.leadingIconTrailingIcon:
        return 'Leading Icon-Trailing Icon';
      case Type.leadingIconTrailingIconButton:
        return 'Leading Icon-Trailing IconButton';
      case Type.leadingIconButtonTrailingIcon:
        return 'Leading IconButton-Trailing Icon';
      case Type.leadingIconButtonTrailingIconButton:
        return 'Leading IconButton-Trailing IconButton';
    }
  }
}
