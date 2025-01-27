import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

import 'demo.dart';

class DemoSnackBarService extends StatelessWidget {
  const DemoSnackBarService({super.key});

  @override
  Widget build(BuildContext context) {
    final SnackBarService _snackBarService =
        GetIt.instance.get<SnackBarService>();

    void _showDismissibleToast(String text,
        {SnackBarType? toastType,
        SnackBarAction? snackBarAction,
        Duration? duration,
        IconData? icon}) {
      _snackBarService.showDismissibleSnackBar(text,
          snackBarType: toastType,
          snackBarAction: snackBarAction,
          duration: duration,
          icon: icon);
    }

    void _showPinnedToast(String text,
        {SnackBarType? toastType,
        SnackBarAction? snackBarAction,
        IconData? icon}) {
      _snackBarService.showPinnedSnackBar(text,
          snackBarType: toastType, snackBarAction: snackBarAction, icon: icon);
    }

    SnackBarAction _getSnackBarAction(BuildContext context,
        {SnackBarType? toastType}) {
      Color? color;

      switch (toastType) {
        case SnackBarType.error:
          color = Theme.of(context).colorScheme.onError;
          break;
        case SnackBarType.success:
          color = Theme.of(context).colorScheme.fmiBaseThemeSuccessOnSuccess;
          break;
        case SnackBarType.warning:
          color = Theme.of(context).colorScheme.fmiBaseThemeWarningOnWarning;
          break;
        default:
          color = Theme.of(context).colorScheme.surface;
          break;
      }

      return SnackBarAction(
        label: 'View Details',
        textColor: color,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text('Action Selected.'),
              );
            },
          );
        },
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ComponentHeader(title: 'Snack Bar Service'),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePadding6,
              bottom: FMIThemeBase.basePadding6),
          child: ComponentSubheader(title: 'Default Snack Bar Service'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
          child: Wrap(
              spacing: FMIThemeBase.basePadding6,
              runSpacing: FMIThemeBase.basePadding6,
              children: [
                ElevatedButton(
                    onPressed: () => _showDismissibleToast(
                          'Default Dismissible',
                        ),
                    child: const Text(
                      'Default Dismissible',
                    )),
                ElevatedButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.solidCircleExclamation),
                    onPressed: () => _showDismissibleToast(
                        'Default Dismissible',
                        icon: FontAwesomeIcons.solidCircleExclamation),
                    label: const Text('Default Dismissible')),
                ElevatedButton(
                    onPressed: () => _showDismissibleToast(
                        'Default Dismissible Action',
                        snackBarAction: _getSnackBarAction(context)),
                    child: const Text('Default Dismissible Action')),
              ]),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
          child: Wrap(
              spacing: FMIThemeBase.basePadding6,
              runSpacing: FMIThemeBase.basePadding6,
              children: [
                ElevatedButton(
                    onPressed: () => _showPinnedToast('Default Pinned'),
                    child: const Text('Default Pinned')),
                ElevatedButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.solidCheck),
                    onPressed: () => _showPinnedToast('Default Pinned',
                        icon: FontAwesomeIcons.solidCheck),
                    label: const Text('Default Pinned')),
                ElevatedButton(
                    onPressed: () => _showPinnedToast('Default Pinned Action',
                        snackBarAction: _getSnackBarAction(context)),
                    child: const Text('Default Pinned Action')),
              ]),
        ),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePadding6,
              bottom: FMIThemeBase.basePadding6),
          child: ComponentSubheader(title: 'Success Snack Bar Service'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
          child: Wrap(
              spacing: FMIThemeBase.basePadding6,
              runSpacing: FMIThemeBase.basePadding6,
              children: [
                ElevatedButton(
                    onPressed: () => _showDismissibleToast(
                        'Success Dismissible',
                        toastType: SnackBarType.success),
                    child: const Text('Success Dismissible')),
                ElevatedButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.solidCircleExclamation),
                    onPressed: () => _showDismissibleToast(
                        'Success Dismissible',
                        toastType: SnackBarType.success,
                        icon: FontAwesomeIcons.solidCircleExclamation),
                    label: const Text('Success Dismissible')),
                ElevatedButton(
                    onPressed: () => _showDismissibleToast(
                        'Success Dismissible Action',
                        toastType: SnackBarType.success,
                        snackBarAction: _getSnackBarAction(context,
                            toastType: SnackBarType.success)),
                    child: const Text('Success Dismissible Action')),
              ]),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
          child: Wrap(
              spacing: FMIThemeBase.basePadding6,
              runSpacing: FMIThemeBase.basePadding6,
              children: [
                ElevatedButton(
                    onPressed: () => _showPinnedToast('Success Pinned',
                        toastType: SnackBarType.success),
                    child: const Text('Success Pinned')),
                ElevatedButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.solidCheck),
                    onPressed: () => _showPinnedToast('Success Pinned',
                        toastType: SnackBarType.success,
                        icon: FontAwesomeIcons.solidCheck),
                    label: const Text('Success Pinned')),
                ElevatedButton(
                    onPressed: () => _showPinnedToast('Success Pinned Action',
                        toastType: SnackBarType.success,
                        snackBarAction: _getSnackBarAction(context,
                            toastType: SnackBarType.success)),
                    child: const Text('Success Pinned Action')),
              ]),
        ),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePadding6,
              bottom: FMIThemeBase.basePadding6),
          child: ComponentSubheader(title: 'Warning Snack Bar Service'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
          child: Wrap(
              spacing: FMIThemeBase.basePadding6,
              runSpacing: FMIThemeBase.basePadding6,
              children: [
                ElevatedButton(
                    onPressed: () => _showDismissibleToast(
                        'Warning Dismissible',
                        toastType: SnackBarType.warning),
                    child: const Text('Warning Dismissible')),
                ElevatedButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.solidCircleExclamation),
                    onPressed: () => _showDismissibleToast(
                        'Warning Dismissible',
                        toastType: SnackBarType.warning,
                        icon: FontAwesomeIcons.solidCircleExclamation),
                    label: const Text('Warning Dismissible')),
                ElevatedButton(
                    onPressed: () => _showDismissibleToast(
                        'Warning Dismissible Action',
                        toastType: SnackBarType.warning,
                        snackBarAction: _getSnackBarAction(context,
                            toastType: SnackBarType.warning)),
                    child: const Text('Warning Dismissible Action')),
              ]),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
          child: Wrap(
              spacing: FMIThemeBase.basePadding6,
              runSpacing: FMIThemeBase.basePadding6,
              children: [
                ElevatedButton(
                    onPressed: () => _showPinnedToast('Warning Pinned',
                        toastType: SnackBarType.warning),
                    child: const Text('Warning Pinned')),
                ElevatedButton.icon(
                    icon: const FaIcon(FontAwesomeIcons.solidCheck),
                    onPressed: () => _showPinnedToast('Warning Pinned',
                        toastType: SnackBarType.warning,
                        icon: FontAwesomeIcons.solidCheck),
                    label: const Text('Warning Pinned')),
                ElevatedButton(
                    onPressed: () => _showPinnedToast('Warning Pinned Action',
                        toastType: SnackBarType.warning,
                        snackBarAction: _getSnackBarAction(context,
                            toastType: SnackBarType.warning)),
                    child: const Text('Warning Pinned Action')),
              ]),
        ),
        const Padding(
          padding: EdgeInsets.only(
              top: FMIThemeBase.basePadding6,
              bottom: FMIThemeBase.basePadding6),
          child: ComponentSubheader(title: 'Error Snack Bar Service'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
          child: Wrap(
            spacing: FMIThemeBase.basePadding6,
            runSpacing: FMIThemeBase.basePadding6,
            children: [
              ElevatedButton(
                  onPressed: () => _showDismissibleToast(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue porttitor nunc, non iaculis quam viverra eu. Cras scelerisque odio a arcu egestas pretium. Sed a diam molestie, facilisis lectus vitae, efficitur risus. Phasellus sed porta libero, id cursus felis. Sed sapien diam, iaculis eget sodales ultricies, finibus sit amet nibh. Etiam rutrum dui elit, vitae dictum ipsum tempus eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas neque nibh, sagittis at tellus et, rhoncus porta augue. Pellentesque pellentesque scelerisque libero vel pretium. Etiam maximus porttitor dolor id pharetra. Etiam pellentesque mi eu felis aliquet ultricies.',
                      toastType: SnackBarType.error),
                  child: const Text('Error Dismissible')),
              ElevatedButton.icon(
                  icon: const FaIcon(FontAwesomeIcons.solidCircleExclamation),
                  onPressed: () => _showDismissibleToast(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue porttitor nunc, non iaculis quam viverra eu. Cras scelerisque odio a arcu egestas pretium. Sed a diam molestie, facilisis lectus vitae, efficitur risus. Phasellus sed porta libero, id cursus felis. Sed sapien diam, iaculis eget sodales ultricies, finibus sit amet nibh. Etiam rutrum dui elit, vitae dictum ipsum tempus eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas neque nibh, sagittis at tellus et, rhoncus porta augue. Pellentesque pellentesque scelerisque libero vel pretium. Etiam maximus porttitor dolor id pharetra. Etiam pellentesque mi eu felis aliquet ultricies.',
                      icon: FontAwesomeIcons.solidCircleExclamation,
                      toastType: SnackBarType.error),
                  label: const Text('Error Dismissible')),
              ElevatedButton(
                  onPressed: () => _showDismissibleToast(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue porttitor nunc, non iaculis quam viverra eu. Cras scelerisque odio a arcu egestas pretium. Sed a diam molestie, facilisis lectus vitae, efficitur risus. Phasellus sed porta libero, id cursus felis. Sed sapien diam, iaculis eget sodales ultricies, finibus sit amet nibh. Etiam rutrum dui elit, vitae dictum ipsum tempus eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas neque nibh, sagittis at tellus et, rhoncus porta augue. Pellentesque pellentesque scelerisque libero vel pretium. Etiam maximus porttitor dolor id pharetra. Etiam pellentesque mi eu felis aliquet ultricies.',
                      toastType: SnackBarType.error,
                      snackBarAction: _getSnackBarAction(context,
                          toastType: SnackBarType.error)),
                  child: const Text('Error Dismissible Action')),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: FMIThemeBase.basePadding6),
          child: Wrap(
            spacing: FMIThemeBase.basePadding6,
            runSpacing: FMIThemeBase.basePadding6,
            children: [
              ElevatedButton(
                  onPressed: () => _showPinnedToast(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue porttitor nunc, non iaculis quam viverra eu. Cras scelerisque odio a arcu egestas pretium. Sed a diam molestie, facilisis lectus vitae, efficitur risus. Phasellus sed porta libero, id cursus felis. Sed sapien diam, iaculis eget sodales ultricies, finibus sit amet nibh. Etiam rutrum dui elit, vitae dictum ipsum tempus eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas neque nibh, sagittis at tellus et, rhoncus porta augue. Pellentesque pellentesque scelerisque libero vel pretium. Etiam maximus porttitor dolor id pharetra. Etiam pellentesque mi eu felis aliquet ultricies.',
                      toastType: SnackBarType.error),
                  child: const Text('Error Pinned')),
              ElevatedButton.icon(
                  icon: const FaIcon(FontAwesomeIcons.solidCheck),
                  onPressed: () => _showPinnedToast(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue porttitor nunc, non iaculis quam viverra eu. Cras scelerisque odio a arcu egestas pretium. Sed a diam molestie, facilisis lectus vitae, efficitur risus. Phasellus sed porta libero, id cursus felis. Sed sapien diam, iaculis eget sodales ultricies, finibus sit amet nibh. Etiam rutrum dui elit, vitae dictum ipsum tempus eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas neque nibh, sagittis at tellus et, rhoncus porta augue. Pellentesque pellentesque scelerisque libero vel pretium. Etiam maximus porttitor dolor id pharetra. Etiam pellentesque mi eu felis aliquet ultricies.',
                      icon: FontAwesomeIcons.solidCheck,
                      toastType: SnackBarType.error),
                  label: const Text('Error Pinned')),
              ElevatedButton(
                  onPressed: () => _showPinnedToast(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue porttitor nunc, non iaculis quam viverra eu. Cras scelerisque odio a arcu egestas pretium. Sed a diam molestie, facilisis lectus vitae, efficitur risus. Phasellus sed porta libero, id cursus felis. Sed sapien diam, iaculis eget sodales ultricies, finibus sit amet nibh. Etiam rutrum dui elit, vitae dictum ipsum tempus eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas neque nibh, sagittis at tellus et, rhoncus porta augue. Pellentesque pellentesque scelerisque libero vel pretium. Etiam maximus porttitor dolor id pharetra. Etiam pellentesque mi eu felis aliquet ultricies.',
                      toastType: SnackBarType.error,
                      snackBarAction: _getSnackBarAction(context,
                          toastType: SnackBarType.error)),
                  child: const Text('Error Pinned Action')),
            ],
          ),
        ),
      ],
    );
  }
}
