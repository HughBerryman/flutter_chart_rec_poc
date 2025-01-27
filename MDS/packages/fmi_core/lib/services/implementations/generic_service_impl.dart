import 'package:fmi_core/repository/api/interfaces/generic_repository.dart';
import 'package:fmi_core/services/interfaces/generic_service.dart';
import 'package:get_it/get_it.dart';
import '../../models/genericLookup/page_set_generic_lookup_model.dart';

class GenericServiceImpl implements GenericService {
  final GenericRepository _genericRepository =
      GetIt.instance.get<GenericRepository>();

  @override
  Future<PageSetGenericLookupModel> getDataSource(
      String masterDataID, String? query, int? page, int? pageSize,
      {String? queryParameter}) async {
    return await _genericRepository.getDataSource(
        masterDataID, query, page, pageSize,
        queryParameter: queryParameter);
  }
}
