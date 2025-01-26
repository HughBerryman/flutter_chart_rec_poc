import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmi_core/designTokens/designTokens.dart';
import 'package:fmi_core/enums/enums.dart';
import 'package:fmi_core/extensions/extensions.dart';
import 'package:fmi_core/ui/ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class FmiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? offlineDialogText;
  final bool showInternet;
  final bool showSync;
  final List<AppBarActionItem> appBarActionItems;
  final ThemeStyle themeStyle;
  final Function()? onBackPressed;
  final bool forceOverflow;
  final IconData? closeIconAppBar;

  const FmiAppBar(
      {Key? key,
      required this.title,
      this.showInternet = false,
      this.showSync = false,
      this.offlineDialogText,
      this.appBarActionItems = const <AppBarActionItem>[],
      this.themeStyle = ThemeStyle.primary,
      this.onBackPressed,
      this.forceOverflow = false,
      this.closeIconAppBar = FontAwesomeIcons.arrowLeft})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(64);

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

          if (showInternet && viewModel.hasInternet) {
            actionWidgets.add(
              IconButton(
                tooltip: context.coreLocalize.offline,
                icon: const FaIcon(FontAwesomeIcons.solidCloudXmark),
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
            );
          }

          if (showSync) {
            actionWidgets.add(
              const SizedBox(
                  width: FMIThemeBase.baseContainerDimension40,
                  height: FMIThemeBase.baseContainerDimension40,
                  child: SpinningIcon(icon: FontAwesomeIcons.solidRotate)),
            );
          }

          List<AppBarActionItem> appBarIconCount = appBarActionItems
              .where((element) => !element.isOverflow)
              .toList(); // filter button that doesn't belong to overflow
          for (int i = 0; i < appBarActionItems.length; i++) {
            AppBarActionItem appBarActionItem = appBarActionItems[i];

            if (!appBarActionItem.isOverflow &&
                appBarIconCount.length <= iconsBeforeOverflow) {
              // add icon to icons visible in the app bar
              actionWidgets.add(
                IconButton(
                  onPressed: () => appBarActionItem.action(),
                  icon: FaIcon(
                    appBarActionItem.icon,
                  ),
                  tooltip: appBarActionItem.text,
                ),
              );
            } else {
              if (forceOverflow) {
                // add icon to the overflow
                popupMenuItems.add(PopupMenuItem<AppBarActionItem>(
                    value: appBarActionItem,
                    child: Row(
                      children: [
                        FaIcon(
                          appBarActionItem.icon,
                          color: Theme.of(context).colorScheme.primary,
                          size: FMIThemeBase.baseIconMedium,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(
                                right: FMIThemeBase.basePadding6)),
                        Text(
                          appBarActionItem.text,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    )));
              }
            }
          }

          if (popupMenuItems.isNotEmpty) {
            final appBarHeight = AppBar().preferredSize.height;
            actionWidgets.add(
              PopupMenuButton(
                itemBuilder: (context) => popupMenuItems,
                onSelected: (selectedItem) => (selectedItem).action(),
                offset: Offset(0.0, appBarHeight),
              ),
            );
          }

          if (actionWidgets.isNotEmpty) {
            actionWidgets.last = Padding(
              padding: const EdgeInsets.only(right: FMIThemeBase.basePadding8),
              child: actionWidgets.last,
            );
          }

          return AppBar(
            leadingWidth: FMIThemeBase.baseContainerDimension0,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                IconButton(
                  icon: FaIcon(
                    closeIconAppBar,
                    color: themeStyle == ThemeStyle.primary
                        ? Theme.of(context).colorScheme.onPrimaryContainer
                        : Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  onPressed: onBackPressed ??
                      () {
                        Navigator.pop(context, false);
                      },
                ),
                Expanded(
                  child: Tooltip(
                    message: title,
                    child: Text(title),
                  ),
                ),
              ],
            ),
            actions: actionWidgets,
            backgroundColor: themeStyle == ThemeStyle.primary
                ? Theme.of(context).colorScheme.primaryContainer
                : Theme.of(context).colorScheme.secondaryContainer,
            foregroundColor: themeStyle == ThemeStyle.primary
                ? Theme.of(context).colorScheme.onPrimaryContainer
                : Theme.of(context).colorScheme.onSecondaryContainer,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: themeStyle == ThemeStyle.primary
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Theme.of(context).colorScheme.secondaryContainer,
                statusBarIconBrightness:
                    MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? Brightness.dark
                        : Brightness.light,
                statusBarBrightness:
                    MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? Brightness.light
                        : Brightness.dark),
          );
        });
  }
}
