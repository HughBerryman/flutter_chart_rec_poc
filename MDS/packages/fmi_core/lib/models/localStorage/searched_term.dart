import 'package:isar/isar.dart';

part 'searched_term.g.dart';

@Collection()
class SearchedTerm{
  @Id()
  int? id;

  String term;

  DateTime timestamp;

  String domain;

  SearchedTerm({required this.term, required this.timestamp, required this.domain});
}
