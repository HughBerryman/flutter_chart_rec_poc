import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'ad_token.dart';

class Request {
  ///Get inforamtion for User Ad param: [token] return UserAdModel or null
  static Future<AdToken?> post({required String token}) async {
    HttpClient client = HttpClient();
    Uri uri = Uri.parse('https://graph.microsoft.com/v1.0/me/');

    HttpClientRequest request = await client.getUrl(uri);
    request.headers.set('Authorization', 'Bearer $token');
    request.headers.set('Content-Type', 'application/json');
    try {
      HttpClientResponse result = await request.close();
      if (result.statusCode == 200) {
        var s = jsonDecode(await result.transform(utf8.decoder).join());
        AdToken adModel = AdToken.fromJson(s);
        return adModel;
      } else {
        var s = jsonDecode(await result.transform(utf8.decoder).join());
        log("Msal Error 1: ${result.statusCode} $s");
      }
    } catch (onError) {
      log("Msal Error 2: ${onError.toString()}");
    }
    return null;
  }
}
