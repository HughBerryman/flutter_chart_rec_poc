import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/ui/components/appBar/models/app_bar_action_item.dart';
import 'package:fmi_core/ui/components/dialogs/confirmationDialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import 'fmi_app_bar_view_model.dart';

@Deprecated('Replace with FmiAppBar')
class TempDemoFmiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? offlineDialogText;
  final bool showInternet;
  final List<AppBarActionItem> appBarActionItems;

  const TempDemoFmiAppBar(
      {Key? key,
      required this.title,
      this.showInternet = false,
      this.offlineDialogText,
      this.appBarActionItems = const <AppBarActionItem>[]})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FmiAppBarViewModel>.reactive(
        viewModelBuilder: () => FmiAppBarViewModel(),
        onViewModelReady: (viewModel) => viewModel.initialize(),
        builder: (context, viewModel, child) {
          List<Widget> actionWidgets = <Widget>[];
          int iconsBeforeOverflow = showInternet ? 1 : 2;
          List<PopupMenuItem<AppBarActionItem>> popupMenuItems =
              <PopupMenuItem<AppBarActionItem>>[];

          if (showInternet && !viewModel.hasInternet) {
            actionWidgets.add(Padding(
              padding: EdgeInsets.only(
                  right: FMIThemeBase.basePaddingXLarge.toDouble()),
              child: IconButton(
                tooltip: context.coreLocalize.offline,
                icon: const Icon(FontAwesomeIcons.solidCloudXmark,
                    size: FMIThemeBase.baseIconMedium),
                onPressed: () {
                  if (offlineDialogText != null) {
                    showDialog(
                        context: context,
                        builder: (_) => ConfirmationDialog(
                              title: context.coreLocalize.youAreOffline,
                              message: offlineDialogText!,
                              iconData: FontAwesomeIcons.solidCloudXmark,
                            ));
                  }
                },
              ),
            ));
          }

          for (int i = 0; i < appBarActionItems.length; i++) {
            AppBarActionItem appBarActionItem = appBarActionItems[i];

            if (i < iconsBeforeOverflow) {
              // add icon to icons visible in the app bar
              actionWidgets.add(Padding(
                padding: i == iconsBeforeOverflow - 1
                    ? const EdgeInsets.only(right: 0)
                    : EdgeInsets.only(
                        right: FMIThemeBase.basePaddingXLarge.toDouble()),
                child: IconButton(
                  onPressed: () => appBarActionItem.action(),
                  icon: FaIcon(appBarActionItem.icon,
                      size: FMIThemeBase.baseIconMedium),
                  tooltip: appBarActionItem.text,
                ),
              ));
            } else {
              // add icon to the overflow
              popupMenuItems.add(PopupMenuItem<AppBarActionItem>(
                  value: appBarActionItem, child: Text(appBarActionItem.text)));
            }
          }

          if (popupMenuItems.isNotEmpty) {
            actionWidgets.add(Padding(
              padding: EdgeInsets.only(
                  right: FMIThemeBase.basePaddingXLarge.toDouble()),
              child: PopupMenuButton(
                itemBuilder: (context) => popupMenuItems,
                onSelected: (selectedItem) => (selectedItem).action(),
              ),
            ));
          }

          return AppBar(
            title: Tooltip(
                message: title,
                child: Text(
                  title,
                  style: const TextStyle(
                      fontFamily: FMIThemeBase.baseTextCaseNone),
                )),
            actions: actionWidgets,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Theme.of(context).colorScheme.secondaryContainer,
            ),
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            elevation: 0,
            foregroundColor: Theme.of(context).colorScheme.primary,
          );
        });
  }
}
