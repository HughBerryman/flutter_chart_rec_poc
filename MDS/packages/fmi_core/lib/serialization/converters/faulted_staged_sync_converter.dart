import 'package:fmi_core/fmi_core.dart';
import 'package:json_annotation/json_annotation.dart';

class FaultedStagedSyncConverter implements JsonConverter<List<FaultedStagedSync>?, List<dynamic>?> {
  const FaultedStagedSyncConverter();

  @override
  List<FaultedStagedSync>? fromJson(List<dynamic>? json) {
    List<FaultedStagedSync>? result;

    if (json != null && json.isNotEmpty) {
      List<FaultedStagedSync> convertedList =
      json.map((val) => FaultedStagedSync.fromJson(val)).toList();
      result = convertedList;
    }

    return result;
  }

  @override
  List<Map<String, dynamic>>? toJson(List<FaultedStagedSync>? faultedStagedSyncs) {
    List<Map<String, dynamic>>? result;

    if (faultedStagedSyncs != null && faultedStagedSyncs.isNotEmpty) {
      result = [];

      for (FaultedStagedSync faultedStagedSync in faultedStagedSyncs) {
        result.add(faultedStagedSync.toJson());
      }
    }

    return result;
  }
}
