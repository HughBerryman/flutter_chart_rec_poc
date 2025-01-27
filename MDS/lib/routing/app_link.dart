/// AppLink is an intermediary object between a URL string and the state of the application
/// The objective of this class is to parse the navigation configuration to and from a URL string
class AppLink {
  String? location;
  
  AppLink({this.location});

  /// Converts a URL to an AppLink object
  static AppLink fromLocation(String? location) {

    location = Uri.decodeFull(location ?? '');

    final uri = Uri.parse(location);

    // In future state can extract relevant query parameters here
    final params = uri.queryParameters;
    
    final appLink = AppLink(location: uri.path);

    return appLink;
  }

  /// Converts an AppLink object to a url
  String toLocation() {
    // Used to build up query parameters
    String addKeyValPair({
      required String key,
      String? value,
    }) =>
        value == null ? '' : '$key=$value&';
    
    return location!;
  }
}
