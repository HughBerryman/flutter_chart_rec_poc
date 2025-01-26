import 'package:fmi_core/models/genericLookup/genericLookup.dart';

abstract class GenericRepository {
  Future<PageSetGenericLookupModel> getDataSource(
      String masterDataID, String? query, int? page, int? pageSize,
      {String? queryParameter});
}
