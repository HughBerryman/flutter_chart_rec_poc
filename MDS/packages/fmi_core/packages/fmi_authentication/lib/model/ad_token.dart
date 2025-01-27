class AdToken {
  String? accessToken;
  String? idToken;
  String? expiresOn;

  AdToken({
    this.accessToken,
    this.expiresOn,
    this.idToken
  });

  factory AdToken.fromJson(Map<String, dynamic> json) {
    return AdToken(
      accessToken: json['accessToken'],
      expiresOn: json["expiresOn"],
      idToken: json["idToken"]
    );
  }

  Map<String, dynamic>? toJson() => {
    'accessToken': accessToken,
    'expiresOn': expiresOn,
    'idToken': idToken,
  };
}
