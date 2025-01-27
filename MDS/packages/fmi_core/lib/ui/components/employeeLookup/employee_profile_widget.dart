import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmployeeProfileWidget extends StatelessWidget {
  const EmployeeProfileWidget(
      {Key? key, required this.description, required this.employee})
      : super(key: key);

  final String description;
  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TitleWithOverlineWidget(
        overline: description.isNotEmpty
            ? description
            : context.coreLocalize.inspectedBy,
        title: employee.displayName?.toTitleCase() ?? "",
      ),
      subtitle: Text(
        employee.jobTitle ?? "",
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.apply(color: Theme.of(context).colorScheme.onSurface),
      ),
      trailing: ClipOval(
        child: CachedNetworkImage(
          imageUrl: employee.photoUrl ?? "",
          width: FMIThemeBase.baseIconMedium,
          height: FMIThemeBase.baseIconMedium,
          fit: BoxFit.cover,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(
            FontAwesomeIcons.solidUser,
            size: FMIThemeBase.baseIconMedium,
          ),
        ),
      ),
    );
  }
}
