// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_domain_metadata.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSyncDomainMetadataCollection on Isar {
  IsarCollection<SyncDomainMetadata> get syncDomainMetadatas => getCollection();
}

const SyncDomainMetadataSchema = CollectionSchema(
  name: 'SyncDomainMetadata',
  schema:
      '{"name":"SyncDomainMetadata","idName":"id","properties":[{"name":"lastSync","type":"Long"},{"name":"syncDomain","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'lastSync': 0, 'syncDomain': 1},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _syncDomainMetadataGetId,
  setId: _syncDomainMetadataSetId,
  getLinks: _syncDomainMetadataGetLinks,
  attachLinks: _syncDomainMetadataAttachLinks,
  serializeNative: _syncDomainMetadataSerializeNative,
  deserializeNative: _syncDomainMetadataDeserializeNative,
  deserializePropNative: _syncDomainMetadataDeserializePropNative,
  serializeWeb: _syncDomainMetadataSerializeWeb,
  deserializeWeb: _syncDomainMetadataDeserializeWeb,
  deserializePropWeb: _syncDomainMetadataDeserializePropWeb,
  version: 3,
);

int? _syncDomainMetadataGetId(SyncDomainMetadata object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _syncDomainMetadataSetId(SyncDomainMetadata object, int id) {
  object.id = id;
}

List<IsarLinkBase> _syncDomainMetadataGetLinks(SyncDomainMetadata object) {
  return [];
}

void _syncDomainMetadataSerializeNative(
    IsarCollection<SyncDomainMetadata> collection,
    IsarRawObject rawObj,
    SyncDomainMetadata object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.lastSync;
  final _lastSync = value0;
  final value1 = object.syncDomain;
  final _syncDomain = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_syncDomain.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _lastSync);
  writer.writeBytes(offsets[1], _syncDomain);
}

SyncDomainMetadata _syncDomainMetadataDeserializeNative(
    IsarCollection<SyncDomainMetadata> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = SyncDomainMetadata(
    id: id,
    lastSync: reader.readDateTimeOrNull(offsets[0]),
    syncDomain: reader.readString(offsets[1]),
  );
  return object;
}

P _syncDomainMetadataDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _syncDomainMetadataSerializeWeb(
    IsarCollection<SyncDomainMetadata> collection, SyncDomainMetadata object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(
      jsObj, 'lastSync', object.lastSync?.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'syncDomain', object.syncDomain);
  return jsObj;
}

SyncDomainMetadata _syncDomainMetadataDeserializeWeb(
    IsarCollection<SyncDomainMetadata> collection, dynamic jsObj) {
  final object = SyncDomainMetadata(
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    lastSync: IsarNative.jsObjectGet(jsObj, 'lastSync') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'lastSync'),
                isUtc: true)
            .toLocal()
        : null,
    syncDomain: IsarNative.jsObjectGet(jsObj, 'syncDomain') ?? '',
  );
  return object;
}

P _syncDomainMetadataDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'lastSync':
      return (IsarNative.jsObjectGet(jsObj, 'lastSync') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'lastSync'),
                  isUtc: true)
              .toLocal()
          : null) as P;
    case 'syncDomain':
      return (IsarNative.jsObjectGet(jsObj, 'syncDomain') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _syncDomainMetadataAttachLinks(
    IsarCollection col, int id, SyncDomainMetadata object) {}

extension SyncDomainMetadataQueryWhereSort
    on QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QWhere> {
  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension SyncDomainMetadataQueryWhere
    on QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QWhereClause> {
  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterWhereClause>
      idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterWhereClause>
      idNotEqualTo(int id) {
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

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterWhereClause>
      idBetween(
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

extension SyncDomainMetadataQueryFilter
    on QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QFilterCondition> {
  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      lastSyncIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastSync',
      value: null,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      lastSyncEqualTo(DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastSync',
      value: value,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      lastSyncGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastSync',
      value: value,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      lastSyncLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastSync',
      value: value,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      lastSyncBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastSync',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      syncDomainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncDomain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      syncDomainGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'syncDomain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      syncDomainLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'syncDomain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      syncDomainBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'syncDomain',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      syncDomainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'syncDomain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      syncDomainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'syncDomain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      syncDomainContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'syncDomain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterFilterCondition>
      syncDomainMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'syncDomain',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension SyncDomainMetadataQueryLinks
    on QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QFilterCondition> {}

extension SyncDomainMetadataQueryWhereSortBy
    on QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QSortBy> {
  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      sortByLastSync() {
    return addSortByInternal('lastSync', Sort.asc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      sortByLastSyncDesc() {
    return addSortByInternal('lastSync', Sort.desc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      sortBySyncDomain() {
    return addSortByInternal('syncDomain', Sort.asc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      sortBySyncDomainDesc() {
    return addSortByInternal('syncDomain', Sort.desc);
  }
}

extension SyncDomainMetadataQueryWhereSortThenBy
    on QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QSortThenBy> {
  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      thenByLastSync() {
    return addSortByInternal('lastSync', Sort.asc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      thenByLastSyncDesc() {
    return addSortByInternal('lastSync', Sort.desc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      thenBySyncDomain() {
    return addSortByInternal('syncDomain', Sort.asc);
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QAfterSortBy>
      thenBySyncDomainDesc() {
    return addSortByInternal('syncDomain', Sort.desc);
  }
}

extension SyncDomainMetadataQueryWhereDistinct
    on QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QDistinct> {
  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QDistinct>
      distinctByLastSync() {
    return addDistinctByInternal('lastSync');
  }

  QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QDistinct>
      distinctBySyncDomain({bool caseSensitive = true}) {
    return addDistinctByInternal('syncDomain', caseSensitive: caseSensitive);
  }
}

extension SyncDomainMetadataQueryProperty
    on QueryBuilder<SyncDomainMetadata, SyncDomainMetadata, QQueryProperty> {
  QueryBuilder<SyncDomainMetadata, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SyncDomainMetadata, DateTime?, QQueryOperations>
      lastSyncProperty() {
    return addPropertyNameInternal('lastSync');
  }

  QueryBuilder<SyncDomainMetadata, String, QQueryOperations>
      syncDomainProperty() {
    return addPropertyNameInternal('syncDomain');
  }
}
