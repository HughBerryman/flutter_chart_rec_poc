import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FmiEmployeeInfoWidget extends StatelessWidget {
  final Employee employee;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final Widget? trailing;
  final bool useDisplayName;
  final bool showDetails;

  const FmiEmployeeInfoWidget(
      {required this.employee,
      this.onTap,
      this.padding,
      this.trailing,
      this.useDisplayName = true,
      this.showDetails = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    bool _copiedIndicator = false;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: showDetails
            ? IntrinsicHeight(child: employeeInfo(context, _copiedIndicator))
            : employeeInfo(context, _copiedIndicator),
      ),
    );
  }

  Row employeeInfo(BuildContext context, bool _copiedIndicator) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: FMIThemeBase.basePadding8),
          child: IgnorePointer(
            child: FmiAvatar(
              url: employee.photoUrl,
              displayName: employee.displayName ?? '',
              avatarSize: FmiAvatarSize.large,
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              showName(context),
              if (employee.jobTitle != null && employee.jobTitle!.isNotEmpty)
                showJobTitle(context),
              if (showDetails &&
                  employee.workLocationDescription != null &&
                  employee.workLocationDescription!.isNotEmpty)
                showWorkLocationDescription(context),
              if (showDetails && employee.employeeID.isNotEmpty)
                showEmployeeID(context, _copiedIndicator),
              if (employee.email != null && employee.email!.isNotEmpty)
                showEmail(context),
              if (showDetails &&
                  employee.mobilePhone != null &&
                  employee.mobilePhone!.isNotEmpty)
                showMobilePhone(context),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: FMIThemeBase.basePadding8),
            child: trailing)
      ],
    );
  }

  Text showName(BuildContext context) {
    return Text(
      useDisplayName
          ? employee.displayName?.toTitleCase() ?? ''
          : "${employee.lastName?.toTitleCase() ?? ''}${
          (employee.lastName != null && employee.firstName != null)
          ? ', ' : ''}${employee.firstName?.toTitleCase() ?? ''}",
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.apply(color: Theme.of(context).colorScheme.onSurface),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text showJobTitle(BuildContext context) {
    return Text(
      employee.jobTitle!,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Text showWorkLocationDescription(BuildContext context) {
    return Text(
      employee.workLocationDescription!,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Theme.of(context).colorScheme.secondary),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget showEmployeeID(BuildContext _cxt, bool _copiedIndicator) {
    return Padding(
      padding: const EdgeInsets.only(top: FMIThemeBase.basePadding4),
      child: Row(
        children: [
          SizedBox(
            width: FMIThemeBase.baseIconMedium,
            child: FaIcon(
              FontAwesomeIcons.lightIdBadge,
              size: FMIThemeBase.baseIconSmall,
              color: Theme.of(_cxt).colorScheme.onSurface,
            ),
          ),
          const SizedBox(width: FMIThemeBase.baseGap3),
          Text(
            employee.employeeID,
            style: Theme.of(_cxt)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(_cxt).colorScheme.secondary),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(width: FMIThemeBase.baseGap5),
          StatefulBuilder(builder: (_cxt, setState) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(text: employee.employeeID));
                  setState(() => _copiedIndicator = true);
                  Timer(const Duration(seconds: 1, milliseconds: 500), () {
                    setState(() => _copiedIndicator = false);
                  });
                },
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.lightCopy,
                        size: FMIThemeBase.baseIconSmall,
                        color: Theme.of(_cxt).colorScheme.onSurface),
                    const SizedBox(width: FMIThemeBase.baseGap3),
                    Visibility(
                      visible: _copiedIndicator,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(_cxt).colorScheme.surface,
                            borderRadius: const BorderRadius.all(
                                Radius.circular(
                                    FMIThemeBase.baseBorderRadiusMedium))),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.check,
                              color: Theme.of(_cxt).colorScheme.onSurface,
                              size: FMIThemeBase.baseIconSmall,
                            ),
                            const SizedBox(width: FMIThemeBase.basePadding5),
                            Text("${_cxt.coreLocalize.copied}!",
                                style: Theme.of(_cxt)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Theme.of(_cxt)
                                            .colorScheme
                                            .onSurface)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Padding showEmail(BuildContext context) {
    return Padding(
      padding: showDetails
          ? const EdgeInsets.only(top: FMIThemeBase.basePadding4)
          : EdgeInsetsDirectional.zero,
      child: MouseRegion(
        cursor: showDetails ? SystemMouseCursors.click : MouseCursor.defer,
        child: GestureDetector(
          onTap: showDetails
              ? () async {
                  Uri uri = Uri(scheme: 'mailto', path: employee.email);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                }
              : null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showDetails)
                SizedBox(
                  width: FMIThemeBase.baseIconMedium,
                  child: FaIcon(FontAwesomeIcons.lightEnvelope,
                      size: FMIThemeBase.baseIconSmall,
                      color: Theme.of(context).colorScheme.primary),
                ),
              if (showDetails) const SizedBox(width: FMIThemeBase.baseGap3),
              Text(
                employee.email!,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: showDetails
                        ? Theme.of(context).colorScheme.primary
                        : null),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding showMobilePhone(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: FMIThemeBase.basePadding4),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            Uri uri = Uri(scheme: 'tel', path: employee.mobilePhone);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: FMIThemeBase.baseIconMedium,
                child: FaIcon(
                  FontAwesomeIcons.lightPhone,
                  size: FMIThemeBase.baseIconSmall,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(width: FMIThemeBase.baseGap3),
              Text(
                employee.mobilePhone!,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
