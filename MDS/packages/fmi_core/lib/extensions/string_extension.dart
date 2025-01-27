extension StringCasingExtension on String {
  String toCapitalize() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalize()).join(' ');
  String get toInitials {
    if (length > 0) {
      var initials = split(' ').map((word) => word[0].toUpperCase()).join('');
    return initials.length > 2 ? '${initials[0]}${initials[1]}' : initials;
    }
    return '';
  }
}
