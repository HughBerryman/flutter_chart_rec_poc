// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_term.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSearchedTermCollection on Isar {
  IsarCollection<SearchedTerm> get searchedTerms => getCollection();
}

const SearchedTermSchema = CollectionSchema(
  name: 'SearchedTerm',
  schema:
      '{"name":"SearchedTerm","idName":"id","properties":[{"name":"domain","type":"String"},{"name":"term","type":"String"},{"name":"timestamp","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'domain': 0, 'term': 1, 'timestamp': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _searchedTermGetId,
  setId: _searchedTermSetId,
  getLinks: _searchedTermGetLinks,
  attachLinks: _searchedTermAttachLinks,
  serializeNative: _searchedTermSerializeNative,
  deserializeNative: _searchedTermDeserializeNative,
  deserializePropNative: _searchedTermDeserializePropNative,
  serializeWeb: _searchedTermSerializeWeb,
  deserializeWeb: _searchedTermDeserializeWeb,
  deserializePropWeb: _searchedTermDeserializePropWeb,
  version: 3,
);

int? _searchedTermGetId(SearchedTerm object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _searchedTermSetId(SearchedTerm object, int id) {
  object.id = id;
}

List<IsarLinkBase> _searchedTermGetLinks(SearchedTerm object) {
  return [];
}

void _searchedTermSerializeNative(
    IsarCollection<SearchedTerm> collection,
    IsarRawObject rawObj,
    SearchedTerm object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.domain;
  final _domain = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_domain.length) as int;
  final value1 = object.term;
  final _term = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_term.length) as int;
  final value2 = object.timestamp;
  final _timestamp = value2;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _domain);
  writer.writeBytes(offsets[1], _term);
  writer.writeDateTime(offsets[2], _timestamp);
}

SearchedTerm _searchedTermDeserializeNative(
    IsarCollection<SearchedTerm> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = SearchedTerm(
    domain: reader.readString(offsets[0]),
    term: reader.readString(offsets[1]),
    timestamp: reader.readDateTime(offsets[2]),
  );
  object.id = id;
  return object;
}

P _searchedTermDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _searchedTermSerializeWeb(
    IsarCollection<SearchedTerm> collection, SearchedTerm object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'domain', object.domain);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'term', object.term);
  IsarNative.jsObjectSet(
      jsObj, 'timestamp', object.timestamp.toUtc().millisecondsSinceEpoch);
  return jsObj;
}

SearchedTerm _searchedTermDeserializeWeb(
    IsarCollection<SearchedTerm> collection, dynamic jsObj) {
  final object = SearchedTerm(
    domain: IsarNative.jsObjectGet(jsObj, 'domain') ?? '',
    term: IsarNative.jsObjectGet(jsObj, 'term') ?? '',
    timestamp: IsarNative.jsObjectGet(jsObj, 'timestamp') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'timestamp'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _searchedTermDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'domain':
      return (IsarNative.jsObjectGet(jsObj, 'domain') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'term':
      return (IsarNative.jsObjectGet(jsObj, 'term') ?? '') as P;
    case 'timestamp':
      return (IsarNative.jsObjectGet(jsObj, 'timestamp') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'timestamp'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _searchedTermAttachLinks(
    IsarCollection col, int id, SearchedTerm object) {}

extension SearchedTermQueryWhereSort
    on QueryBuilder<SearchedTerm, SearchedTerm, QWhere> {
  QueryBuilder<SearchedTerm, SearchedTerm, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension SearchedTermQueryWhere
    on QueryBuilder<SearchedTerm, SearchedTerm, QWhereClause> {
  QueryBuilder<SearchedTerm, SearchedTerm, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterWhereClause> idNotEqualTo(
      int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension SearchedTermQueryFilter
    on QueryBuilder<SearchedTerm, SearchedTerm, QFilterCondition> {
  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> domainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'domain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      domainGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'domain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      domainLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'domain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> domainBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'domain',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      domainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'domain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      domainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'domain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      domainContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'domain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> domainMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'domain',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> idEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> termEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'term',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      termGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'term',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> termLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'term',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> termBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'term',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      termStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'term',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> termEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'term',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> termContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'term',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition> termMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'term',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      timestampEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'timestamp',
      value: value,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      timestampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'timestamp',
      value: value,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      timestampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'timestamp',
      value: value,
    ));
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterFilterCondition>
      timestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'timestamp',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension SearchedTermQueryLinks
    on QueryBuilder<SearchedTerm, SearchedTerm, QFilterCondition> {}

extension SearchedTermQueryWhereSortBy
    on QueryBuilder<SearchedTerm, SearchedTerm, QSortBy> {
  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> sortByDomain() {
    return addSortByInternal('domain', Sort.asc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> sortByDomainDesc() {
    return addSortByInternal('domain', Sort.desc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> sortByTerm() {
    return addSortByInternal('term', Sort.asc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> sortByTermDesc() {
    return addSortByInternal('term', Sort.desc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> sortByTimestamp() {
    return addSortByInternal('timestamp', Sort.asc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> sortByTimestampDesc() {
    return addSortByInternal('timestamp', Sort.desc);
  }
}

extension SearchedTermQueryWhereSortThenBy
    on QueryBuilder<SearchedTerm, SearchedTerm, QSortThenBy> {
  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> thenByDomain() {
    return addSortByInternal('domain', Sort.asc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> thenByDomainDesc() {
    return addSortByInternal('domain', Sort.desc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> thenByTerm() {
    return addSortByInternal('term', Sort.asc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> thenByTermDesc() {
    return addSortByInternal('term', Sort.desc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> thenByTimestamp() {
    return addSortByInternal('timestamp', Sort.asc);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QAfterSortBy> thenByTimestampDesc() {
    return addSortByInternal('timestamp', Sort.desc);
  }
}

extension SearchedTermQueryWhereDistinct
    on QueryBuilder<SearchedTerm, SearchedTerm, QDistinct> {
  QueryBuilder<SearchedTerm, SearchedTerm, QDistinct> distinctByDomain(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('domain', caseSensitive: caseSensitive);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QDistinct> distinctByTerm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('term', caseSensitive: caseSensitive);
  }

  QueryBuilder<SearchedTerm, SearchedTerm, QDistinct> distinctByTimestamp() {
    return addDistinctByInternal('timestamp');
  }
}

extension SearchedTermQueryProperty
    on QueryBuilder<SearchedTerm, SearchedTerm, QQueryProperty> {
  QueryBuilder<SearchedTerm, String, QQueryOperations> domainProperty() {
    return addPropertyNameInternal('domain');
  }

  QueryBuilder<SearchedTerm, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SearchedTerm, String, QQueryOperations> termProperty() {
    return addPropertyNameInternal('term');
  }

  QueryBuilder<SearchedTerm, DateTime, QQueryOperations> timestampProperty() {
    return addPropertyNameInternal('timestamp');
  }
}
