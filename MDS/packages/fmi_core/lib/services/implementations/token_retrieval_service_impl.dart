import 'package:get_it/get_it.dart';

import '../interfaces/preference_service.dart';
import '../interfaces/token_retreival_service.dart';

class TokenRetrievalServiceImpl implements TokenRetrievalService {
  final PreferenceService _preferenceService = GetIt.instance<PreferenceService>();

  @override
  Future<String?> getToken() async {
    var token = await _preferenceService.getAccessToken();
    return token;
  }
}