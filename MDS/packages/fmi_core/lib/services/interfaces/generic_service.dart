import 'package:fmi_core/fmi_core.dart';

abstract class GenericService {
  Future<PageSetGenericLookupModel> getDataSource(
      String masterDataID, String? query, int? page, int? pageSize,
      {String? queryParameter});
}
