// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staged_sync.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetStagedSyncCollection on Isar {
  IsarCollection<StagedSync> get stagedSyncs => getCollection();
}

const StagedSyncSchema = CollectionSchema(
  name: 'StagedSync',
  schema:
      '{"name":"StagedSync","idName":"id","properties":[{"name":"displayName","type":"String"},{"name":"metadata","type":"String"},{"name":"payload","type":"String"},{"name":"searchKey","type":"String"},{"name":"syncAttempt","type":"Long"},{"name":"syncDomain","type":"String"},{"name":"syncType","type":"String"},{"name":"x_7_draftSearchKey","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'displayName': 0,
    'metadata': 1,
    'payload': 2,
    'searchKey': 3,
    'syncAttempt': 4,
    'syncDomain': 5,
    'syncType': 6,
    'x_7_draftSearchKey': 7
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _stagedSyncGetId,
  setId: _stagedSyncSetId,
  getLinks: _stagedSyncGetLinks,
  attachLinks: _stagedSyncAttachLinks,
  serializeNative: _stagedSyncSerializeNative,
  deserializeNative: _stagedSyncDeserializeNative,
  deserializePropNative: _stagedSyncDeserializePropNative,
  serializeWeb: _stagedSyncSerializeWeb,
  deserializeWeb: _stagedSyncDeserializeWeb,
  deserializePropWeb: _stagedSyncDeserializePropWeb,
  version: 3,
);

int? _stagedSyncGetId(StagedSync object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _stagedSyncSetId(StagedSync object, int id) {
  object.id = id;
}

List<IsarLinkBase> _stagedSyncGetLinks(StagedSync object) {
  return [];
}

void _stagedSyncSerializeNative(
    IsarCollection<StagedSync> collection,
    IsarRawObject rawObj,
    StagedSync object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.displayName;
  final _displayName = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_displayName.length) as int;
  final value1 = object.metadata;
  IsarUint8List? _metadata;
  if (value1 != null) {
    _metadata = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_metadata?.length ?? 0) as int;
  final value2 = object.payload;
  final _payload = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_payload.length) as int;
  final value3 = object.searchKey;
  IsarUint8List? _searchKey;
  if (value3 != null) {
    _searchKey = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_searchKey?.length ?? 0) as int;
  final value4 = object.syncAttempt;
  final _syncAttempt = value4;
  final value5 = object.syncDomain;
  final _syncDomain = IsarBinaryWriter.utf8Encoder.convert(value5);
  dynamicSize += (_syncDomain.length) as int;
  final value6 = object.syncType;
  final _syncType = IsarBinaryWriter.utf8Encoder.convert(value6);
  dynamicSize += (_syncType.length) as int;
  final value7 = object.draftSearchKey;
  IsarUint8List? _x_7_draftSearchKey;
  if (value7 != null) {
    _x_7_draftSearchKey = IsarBinaryWriter.utf8Encoder.convert(value7);
  }
  dynamicSize += (_x_7_draftSearchKey?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _displayName);
  writer.writeBytes(offsets[1], _metadata);
  writer.writeBytes(offsets[2], _payload);
  writer.writeBytes(offsets[3], _searchKey);
  writer.writeLong(offsets[4], _syncAttempt);
  writer.writeBytes(offsets[5], _syncDomain);
  writer.writeBytes(offsets[6], _syncType);
  writer.writeBytes(offsets[7], _x_7_draftSearchKey);
}

StagedSync _stagedSyncDeserializeNative(IsarCollection<StagedSync> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = StagedSync(
    displayName: reader.readString(offsets[0]),
    metadata: reader.readStringOrNull(offsets[1]),
    payload: reader.readString(offsets[2]),
    searchKey: reader.readStringOrNull(offsets[3]),
    syncAttempt: reader.readLong(offsets[4]),
    syncDomain: reader.readString(offsets[5]),
    syncType: reader.readString(offsets[6]),
    draftSearchKey: reader.readStringOrNull(offsets[7]),
  );
  object.id = id;
  return object;
}

P _stagedSyncDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _stagedSyncSerializeWeb(
    IsarCollection<StagedSync> collection, StagedSync object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'displayName', object.displayName);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'metadata', object.metadata);
  IsarNative.jsObjectSet(jsObj, 'payload', object.payload);
  IsarNative.jsObjectSet(jsObj, 'searchKey', object.searchKey);
  IsarNative.jsObjectSet(jsObj, 'syncAttempt', object.syncAttempt);
  IsarNative.jsObjectSet(jsObj, 'syncDomain', object.syncDomain);
  IsarNative.jsObjectSet(jsObj, 'syncType', object.syncType);
  IsarNative.jsObjectSet(jsObj, 'x_7_draftSearchKey', object.draftSearchKey);
  return jsObj;
}

StagedSync _stagedSyncDeserializeWeb(
    IsarCollection<StagedSync> collection, dynamic jsObj) {
  final object = StagedSync(
    displayName: IsarNative.jsObjectGet(jsObj, 'displayName') ?? '',
    metadata: IsarNative.jsObjectGet(jsObj, 'metadata'),
    payload: IsarNative.jsObjectGet(jsObj, 'payload') ?? '',
    searchKey: IsarNative.jsObjectGet(jsObj, 'searchKey'),
    syncAttempt:
        IsarNative.jsObjectGet(jsObj, 'syncAttempt') ?? double.negativeInfinity,
    syncDomain: IsarNative.jsObjectGet(jsObj, 'syncDomain') ?? '',
    syncType: IsarNative.jsObjectGet(jsObj, 'syncType') ?? '',
    draftSearchKey: IsarNative.jsObjectGet(jsObj, 'x_7_draftSearchKey'),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _stagedSyncDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'displayName':
      return (IsarNative.jsObjectGet(jsObj, 'displayName') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'metadata':
      return (IsarNative.jsObjectGet(jsObj, 'metadata')) as P;
    case 'payload':
      return (IsarNative.jsObjectGet(jsObj, 'payload') ?? '') as P;
    case 'searchKey':
      return (IsarNative.jsObjectGet(jsObj, 'searchKey')) as P;
    case 'syncAttempt':
      return (IsarNative.jsObjectGet(jsObj, 'syncAttempt') ??
          double.negativeInfinity) as P;
    case 'syncDomain':
      return (IsarNative.jsObjectGet(jsObj, 'syncDomain') ?? '') as P;
    case 'syncType':
      return (IsarNative.jsObjectGet(jsObj, 'syncType') ?? '') as P;
    case 'x_7_draftSearchKey':
      return (IsarNative.jsObjectGet(jsObj, 'x_7_draftSearchKey')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _stagedSyncAttachLinks(IsarCollection col, int id, StagedSync object) {}

extension StagedSyncQueryWhereSort
    on QueryBuilder<StagedSync, StagedSync, QWhere> {
  QueryBuilder<StagedSync, StagedSync, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension StagedSyncQueryWhere
    on QueryBuilder<StagedSync, StagedSync, QWhereClause> {
  QueryBuilder<StagedSync, StagedSync, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<StagedSync, StagedSync, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<StagedSync, StagedSync, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<StagedSync, StagedSync, QAfterWhereClause> idBetween(
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

extension StagedSyncQueryFilter
    on QueryBuilder<StagedSync, StagedSync, QFilterCondition> {
  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      displayNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      displayNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      displayNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      displayNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'displayName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      displayNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      displayNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      displayNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      displayNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'displayName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> idEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> idBetween(
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> metadataIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'metadata',
      value: null,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> metadataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'metadata',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      metadataGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'metadata',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> metadataLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'metadata',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> metadataBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'metadata',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      metadataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'metadata',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> metadataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'metadata',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> metadataContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'metadata',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> metadataMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'metadata',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> payloadEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'payload',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      payloadGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'payload',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> payloadLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'payload',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> payloadBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'payload',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> payloadStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'payload',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> payloadEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'payload',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> payloadContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'payload',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> payloadMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'payload',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      searchKeyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'searchKey',
      value: null,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> searchKeyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'searchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      searchKeyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'searchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> searchKeyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'searchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> searchKeyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'searchKey',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      searchKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'searchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> searchKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'searchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> searchKeyContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'searchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> searchKeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'searchKey',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      syncAttemptEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncAttempt',
      value: value,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      syncAttemptGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'syncAttempt',
      value: value,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      syncAttemptLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'syncAttempt',
      value: value,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      syncAttemptBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'syncAttempt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncDomainEqualTo(
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncDomainBetween(
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
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

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      syncDomainContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'syncDomain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncDomainMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'syncDomain',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      syncTypeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'syncType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncTypeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'syncType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncTypeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'syncType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      syncTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'syncType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'syncType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'syncType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition> syncTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'syncType',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'x_7_draftSearchKey',
      value: null,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'x_7_draftSearchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'x_7_draftSearchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'x_7_draftSearchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'x_7_draftSearchKey',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'x_7_draftSearchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'x_7_draftSearchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'x_7_draftSearchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StagedSync, StagedSync, QAfterFilterCondition>
      draftSearchKeyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'x_7_draftSearchKey',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension StagedSyncQueryLinks
    on QueryBuilder<StagedSync, StagedSync, QFilterCondition> {}

extension StagedSyncQueryWhereSortBy
    on QueryBuilder<StagedSync, StagedSync, QSortBy> {
  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortByDisplayName() {
    return addSortByInternal('displayName', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortByDisplayNameDesc() {
    return addSortByInternal('displayName', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortByMetadata() {
    return addSortByInternal('metadata', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortByMetadataDesc() {
    return addSortByInternal('metadata', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortByPayload() {
    return addSortByInternal('payload', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortByPayloadDesc() {
    return addSortByInternal('payload', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortBySearchKey() {
    return addSortByInternal('searchKey', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortBySearchKeyDesc() {
    return addSortByInternal('searchKey', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortBySyncAttempt() {
    return addSortByInternal('syncAttempt', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortBySyncAttemptDesc() {
    return addSortByInternal('syncAttempt', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortBySyncDomain() {
    return addSortByInternal('syncDomain', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortBySyncDomainDesc() {
    return addSortByInternal('syncDomain', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortBySyncType() {
    return addSortByInternal('syncType', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortBySyncTypeDesc() {
    return addSortByInternal('syncType', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> sortByDraftSearchKey() {
    return addSortByInternal('x_7_draftSearchKey', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy>
      sortByDraftSearchKeyDesc() {
    return addSortByInternal('x_7_draftSearchKey', Sort.desc);
  }
}

extension StagedSyncQueryWhereSortThenBy
    on QueryBuilder<StagedSync, StagedSync, QSortThenBy> {
  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenByDisplayName() {
    return addSortByInternal('displayName', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenByDisplayNameDesc() {
    return addSortByInternal('displayName', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenByMetadata() {
    return addSortByInternal('metadata', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenByMetadataDesc() {
    return addSortByInternal('metadata', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenByPayload() {
    return addSortByInternal('payload', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenByPayloadDesc() {
    return addSortByInternal('payload', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenBySearchKey() {
    return addSortByInternal('searchKey', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenBySearchKeyDesc() {
    return addSortByInternal('searchKey', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenBySyncAttempt() {
    return addSortByInternal('syncAttempt', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenBySyncAttemptDesc() {
    return addSortByInternal('syncAttempt', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenBySyncDomain() {
    return addSortByInternal('syncDomain', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenBySyncDomainDesc() {
    return addSortByInternal('syncDomain', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenBySyncType() {
    return addSortByInternal('syncType', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenBySyncTypeDesc() {
    return addSortByInternal('syncType', Sort.desc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy> thenByDraftSearchKey() {
    return addSortByInternal('x_7_draftSearchKey', Sort.asc);
  }

  QueryBuilder<StagedSync, StagedSync, QAfterSortBy>
      thenByDraftSearchKeyDesc() {
    return addSortByInternal('x_7_draftSearchKey', Sort.desc);
  }
}

extension StagedSyncQueryWhereDistinct
    on QueryBuilder<StagedSync, StagedSync, QDistinct> {
  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctByDisplayName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('displayName', caseSensitive: caseSensitive);
  }

  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctByMetadata(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('metadata', caseSensitive: caseSensitive);
  }

  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctByPayload(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('payload', caseSensitive: caseSensitive);
  }

  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctBySearchKey(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('searchKey', caseSensitive: caseSensitive);
  }

  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctBySyncAttempt() {
    return addDistinctByInternal('syncAttempt');
  }

  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctBySyncDomain(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('syncDomain', caseSensitive: caseSensitive);
  }

  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctBySyncType(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('syncType', caseSensitive: caseSensitive);
  }

  QueryBuilder<StagedSync, StagedSync, QDistinct> distinctByDraftSearchKey(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('x_7_draftSearchKey',
        caseSensitive: caseSensitive);
  }
}

extension StagedSyncQueryProperty
    on QueryBuilder<StagedSync, StagedSync, QQueryProperty> {
  QueryBuilder<StagedSync, String, QQueryOperations> displayNameProperty() {
    return addPropertyNameInternal('displayName');
  }

  QueryBuilder<StagedSync, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<StagedSync, String?, QQueryOperations> metadataProperty() {
    return addPropertyNameInternal('metadata');
  }

  QueryBuilder<StagedSync, String, QQueryOperations> payloadProperty() {
    return addPropertyNameInternal('payload');
  }

  QueryBuilder<StagedSync, String?, QQueryOperations> searchKeyProperty() {
    return addPropertyNameInternal('searchKey');
  }

  QueryBuilder<StagedSync, int, QQueryOperations> syncAttemptProperty() {
    return addPropertyNameInternal('syncAttempt');
  }

  QueryBuilder<StagedSync, String, QQueryOperations> syncDomainProperty() {
    return addPropertyNameInternal('syncDomain');
  }

  QueryBuilder<StagedSync, String, QQueryOperations> syncTypeProperty() {
    return addPropertyNameInternal('syncType');
  }

  QueryBuilder<StagedSync, String?, QQueryOperations> draftSearchKeyProperty() {
    return addPropertyNameInternal('x_7_draftSearchKey');
  }
}
