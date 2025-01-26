import 'package:fmi_core/models/localStorage/searched_term.dart';
import 'package:fmi_core/repository/localStorage/interfaces/searched_term_local_storage_repository.dart';
import 'package:isar/isar.dart';


class SearchedTermRepositoryImpl implements SearchedTermRepository {
  final Isar isar;

  SearchedTermRepositoryImpl({required this.isar});

  @override
  Future deleteSearchedTerm(SearchedTerm searchedTerm) async{
    if(searchedTerm.id != null) {
      await isar.writeTxn((isar) async {
        await getSearchedTermCollection().delete(searchedTerm.id!);
      });
    }
  }

  @override
  Future<List<SearchedTerm>> getSearchedTermsByDomain(String domain) async {
    return await getSearchedTermCollection().where().filter().domainEqualTo(domain).findAll();
  }

  @override
  Future upsertSearchedTerm(SearchedTerm searchedTerm) async {
    await isar.writeTxn((isar) async {
      await getSearchedTermCollection().put(searchedTerm);
    });
  }

  IsarCollection<SearchedTerm> getSearchedTermCollection() {
    return isar.searchedTerms;
  }
}