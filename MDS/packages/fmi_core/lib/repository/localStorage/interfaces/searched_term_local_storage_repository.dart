import '../../../models/localStorage/searched_term.dart';

abstract class SearchedTermRepository {
  Future<List<SearchedTerm>> getSearchedTermsByDomain(String domain);
  Future deleteSearchedTerm(SearchedTerm searchedTerm);
  Future upsertSearchedTerm(SearchedTerm searchedTerm);
}