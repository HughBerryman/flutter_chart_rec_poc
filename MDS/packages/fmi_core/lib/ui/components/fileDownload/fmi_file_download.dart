import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:fmi_core/services/interfaces/interfaces.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';

class FmiFileDownload {
  Dio dio = Dio();
  bool isSuccess = false;

  final PreferenceService _preferenceService = GetIt.instance<PreferenceService>();

  void startDownloading(BuildContext context, String name, String url, Function(double) progressCallback) async {
    Dio dio = Dio();
    var filePath = await getFilePath(name);
    await dio.download(url, filePath, onReceiveProgress: (receivedBytes, totalBytes) {
      progressCallback((receivedBytes / totalBytes));
    },
        options: Options(
            headers: {
              'Authorization': 'Bearer ${await _preferenceService
                  .getAccessToken()}',
            }
        )
    );

    OpenFile.open(filePath);
  }

  Future<String> getFilePath(String fileName) async {
    Directory? dir;

    if(Platform.isAndroid) {
      dir = await getExternalStorageDirectory();
    } else if(Platform.isIOS) {
      dir = await getApplicationDocumentsDirectory();
    }

    return "${dir?.path}/$fileName";
  }
}