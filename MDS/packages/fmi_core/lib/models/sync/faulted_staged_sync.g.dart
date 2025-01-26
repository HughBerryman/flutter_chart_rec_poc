// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faulted_staged_sync.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetFaultedStagedSyncCollection on Isar {
  IsarCollection<FaultedStagedSync> get faultedStagedSyncs => getCollection();
}

const FaultedStagedSyncSchema = CollectionSchema(
  name: 'FaultedStagedSync',
  schema:
      '{"name":"FaultedStagedSync","idName":"id","properties":[{"name":"displayName","type":"String"},{"name":"metadata","type":"String"},{"name":"notificationShown","type":"Bool"},{"name":"payload","type":"String"},{"name":"searchKey","type":"String"},{"name":"syncAttempt","type":"Long"},{"name":"syncDomain","type":"String"},{"name":"syncType","type":"String"},{"name":"systemAcknowledged","type":"Bool"},{"name":"x_7_draftSearchKey","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'displayName': 0,
    'metadata': 1,
    'notificationShown': 2,
    'payload': 3,
    'searchKey': 4,
    'syncAttempt': 5,
    'syncDomain': 6,
    'syncType': 7,
    'systemAcknowledged': 8,
    'x_7_draftSearchKey': 9
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _faultedStagedSyncGetId,
  setId: _faultedStagedSyncSetId,
  getLinks: _faultedStagedSyncGetLinks,
  attachLinks: _faultedStagedSyncAttachLinks,
  serializeNative: _faultedStagedSyncSerializeNative,
  deserializeNative: _faultedStagedSyncDeserializeNative,
  deserializePropNative: _faultedStagedSyncDeserializePropNative,
  serializeWeb: _faultedStagedSyncSerializeWeb,
  deserializeWeb: _faultedStagedSyncDeserializeWeb,
  deserializePropWeb: _faultedStagedSyncDeserializePropWeb,
  version: 3,
);

int? _faultedStagedSyncGetId(FaultedStagedSync object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _faultedStagedSyncSetId(FaultedStagedSync object, int id) {
  object.id = id;
}

List<IsarLinkBase> _faultedStagedSyncGetLinks(FaultedStagedSync object) {
  return [];
}

void _faultedStagedSyncSerializeNative(
    IsarCollection<FaultedStagedSync> collection,
    IsarRawObject rawObj,
    FaultedStagedSync object,
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
  final value2 = object.notificationShown;
  final _notificationShown = value2;
  final value3 = object.payload;
  final _payload = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_payload.length) as int;
  final value4 = object.searchKey;
  IsarUint8List? _searchKey;
  if (value4 != null) {
    _searchKey = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_searchKey?.length ?? 0) as int;
  final value5 = object.syncAttempt;
  final _syncAttempt = value5;
  final value6 = object.syncDomain;
  final _syncDomain = IsarBinaryWriter.utf8Encoder.convert(value6);
  dynamicSize += (_syncDomain.length) as int;
  final value7 = object.syncType;
  final _syncType = IsarBinaryWriter.utf8Encoder.convert(value7);
  dynamicSize += (_syncType.length) as int;
  final value8 = object.systemAcknowledged;
  final _systemAcknowledged = value8;
  final value9 = object.draftSearchKey;
  IsarUint8List? _x_7_draftSearchKey;
  if (value9 != null) {
    _x_7_draftSearchKey = IsarBinaryWriter.utf8Encoder.convert(value9);
  }
  dynamicSize += (_x_7_draftSearchKey?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _displayName);
  writer.writeBytes(offsets[1], _metadata);
  writer.writeBool(offsets[2], _notificationShown);
  writer.writeBytes(offsets[3], _payload);
  writer.writeBytes(offsets[4], _searchKey);
  writer.writeLong(offsets[5], _syncAttempt);
  writer.writeBytes(offsets[6], _syncDomain);
  writer.writeBytes(offsets[7], _syncType);
  writer.writeBool(offsets[8], _systemAcknowledged);
  writer.writeBytes(offsets[9], _x_7_draftSearchKey);
}

FaultedStagedSync _faultedStagedSyncDeserializeNative(
    IsarCollection<FaultedStagedSync> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = FaultedStagedSync(
    displayName: reader.readString(offsets[0]),
    metadata: reader.readStringOrNull(offsets[1]),
    notificationShown: reader.readBool(offsets[2]),
    payload: reader.readString(offsets[3]),
    searchKey: reader.readStringOrNull(offsets[4]),
    syncAttempt: reader.readLong(offsets[5]),
    syncDomain: reader.readString(offsets[6]),
    syncType: reader.readString(offsets[7]),
    systemAcknowledged: reader.readBool(offsets[8]),
    draftSearchKey: reader.readStringOrNull(offsets[9]),
  );
  object.id = id;
  return object;
}

P _faultedStagedSyncDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _faultedStagedSyncSerializeWeb(
    IsarCollection<FaultedStagedSync> collection, FaultedStagedSync object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'displayName', object.displayName);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'metadata', object.metadata);
  IsarNative.jsObjectSet(jsObj, 'notificationShown', object.notificationShown);
  IsarNative.jsObjectSet(jsObj, 'payload', object.payload);
  IsarNative.jsObjectSet(jsObj, 'searchKey', object.searchKey);
  IsarNative.jsObjectSet(jsObj, 'syncAttempt', object.syncAttempt);
  IsarNative.jsObjectSet(jsObj, 'syncDomain', object.syncDomain);
  IsarNative.jsObjectSet(jsObj, 'syncType', object.syncType);
  IsarNative.jsObjectSet(
      jsObj, 'systemAcknowledged', object.systemAcknowledged);
  IsarNative.jsObjectSet(jsObj, 'x_7_draftSearchKey', object.draftSearchKey);
  return jsObj;
}

FaultedStagedSync _faultedStagedSyncDeserializeWeb(
    IsarCollection<FaultedStagedSync> collection, dynamic jsObj) {
  final object = FaultedStagedSync(
    displayName: IsarNative.jsObjectGet(jsObj, 'displayName') ?? '',
    metadata: IsarNative.jsObjectGet(jsObj, 'metadata'),
    notificationShown:
        IsarNative.jsObjectGet(jsObj, 'notificationShown') ?? false,
    payload: IsarNative.jsObjectGet(jsObj, 'payload') ?? '',
    searchKey: IsarNative.jsObjectGet(jsObj, 'searchKey'),
    syncAttempt:
        IsarNative.jsObjectGet(jsObj, 'syncAttempt') ?? double.negativeInfinity,
    syncDomain: IsarNative.jsObjectGet(jsObj, 'syncDomain') ?? '',
    syncType: IsarNative.jsObjectGet(jsObj, 'syncType') ?? '',
    systemAcknowledged:
        IsarNative.jsObjectGet(jsObj, 'systemAcknowledged') ?? false,
    draftSearchKey: IsarNative.jsObjectGet(jsObj, 'x_7_draftSearchKey'),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _faultedStagedSyncDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'displayName':
      return (IsarNative.jsObjectGet(jsObj, 'displayName') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'metadata':
      return (IsarNative.jsObjectGet(jsObj, 'metadata')) as P;
    case 'notificationShown':
      return (IsarNative.jsObjectGet(jsObj, 'notificationShown') ?? false) as P;
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
    case 'systemAcknowledged':
      return (IsarNative.jsObjectGet(jsObj, 'systemAcknowledged') ?? false)
          as P;
    case 'x_7_draftSearchKey':
      return (IsarNative.jsObjectGet(jsObj, 'x_7_draftSearchKey')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _faultedStagedSyncAttachLinks(
    IsarCollection col, int id, FaultedStagedSync object) {}

extension FaultedStagedSyncQueryWhereSort
    on QueryBuilder<FaultedStagedSync, FaultedStagedSync, QWhere> {
  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension FaultedStagedSyncQueryWhere
    on QueryBuilder<FaultedStagedSync, FaultedStagedSync, QWhereClause> {
  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterWhereClause>
      idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterWhereClause>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterWhereClause>
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

extension FaultedStagedSyncQueryFilter
    on QueryBuilder<FaultedStagedSync, FaultedStagedSync, QFilterCondition> {
  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      displayNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      displayNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'displayName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      metadataIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'metadata',
      value: null,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      metadataEqualTo(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      metadataLessThan(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      metadataBetween(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      metadataEndsWith(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      metadataContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'metadata',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      metadataMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'metadata',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      notificationShownEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'notificationShown',
      value: value,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      payloadEqualTo(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      payloadLessThan(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      payloadBetween(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      payloadStartsWith(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      payloadEndsWith(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      payloadContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'payload',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      payloadMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'payload',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      searchKeyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'searchKey',
      value: null,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      searchKeyEqualTo(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      searchKeyLessThan(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      searchKeyBetween(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      searchKeyEndsWith(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      searchKeyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'searchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      searchKeyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'searchKey',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncAttemptEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'syncAttempt',
      value: value,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncDomainContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'syncDomain',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncDomainMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'syncDomain',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncTypeEqualTo(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncTypeLessThan(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncTypeBetween(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncTypeEndsWith(
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncTypeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'syncType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      syncTypeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'syncType',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      systemAcknowledgedEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'systemAcknowledged',
      value: value,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      draftSearchKeyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'x_7_draftSearchKey',
      value: null,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
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

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      draftSearchKeyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'x_7_draftSearchKey',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterFilterCondition>
      draftSearchKeyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'x_7_draftSearchKey',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension FaultedStagedSyncQueryLinks
    on QueryBuilder<FaultedStagedSync, FaultedStagedSync, QFilterCondition> {}

extension FaultedStagedSyncQueryWhereSortBy
    on QueryBuilder<FaultedStagedSync, FaultedStagedSync, QSortBy> {
  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByDisplayName() {
    return addSortByInternal('displayName', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByDisplayNameDesc() {
    return addSortByInternal('displayName', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByMetadata() {
    return addSortByInternal('metadata', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByMetadataDesc() {
    return addSortByInternal('metadata', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByNotificationShown() {
    return addSortByInternal('notificationShown', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByNotificationShownDesc() {
    return addSortByInternal('notificationShown', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByPayload() {
    return addSortByInternal('payload', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByPayloadDesc() {
    return addSortByInternal('payload', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySearchKey() {
    return addSortByInternal('searchKey', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySearchKeyDesc() {
    return addSortByInternal('searchKey', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySyncAttempt() {
    return addSortByInternal('syncAttempt', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySyncAttemptDesc() {
    return addSortByInternal('syncAttempt', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySyncDomain() {
    return addSortByInternal('syncDomain', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySyncDomainDesc() {
    return addSortByInternal('syncDomain', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySyncType() {
    return addSortByInternal('syncType', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySyncTypeDesc() {
    return addSortByInternal('syncType', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySystemAcknowledged() {
    return addSortByInternal('systemAcknowledged', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortBySystemAcknowledgedDesc() {
    return addSortByInternal('systemAcknowledged', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByDraftSearchKey() {
    return addSortByInternal('x_7_draftSearchKey', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      sortByDraftSearchKeyDesc() {
    return addSortByInternal('x_7_draftSearchKey', Sort.desc);
  }
}

extension FaultedStagedSyncQueryWhereSortThenBy
    on QueryBuilder<FaultedStagedSync, FaultedStagedSync, QSortThenBy> {
  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByDisplayName() {
    return addSortByInternal('displayName', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByDisplayNameDesc() {
    return addSortByInternal('displayName', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByMetadata() {
    return addSortByInternal('metadata', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByMetadataDesc() {
    return addSortByInternal('metadata', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByNotificationShown() {
    return addSortByInternal('notificationShown', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByNotificationShownDesc() {
    return addSortByInternal('notificationShown', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByPayload() {
    return addSortByInternal('payload', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByPayloadDesc() {
    return addSortByInternal('payload', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySearchKey() {
    return addSortByInternal('searchKey', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySearchKeyDesc() {
    return addSortByInternal('searchKey', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySyncAttempt() {
    return addSortByInternal('syncAttempt', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySyncAttemptDesc() {
    return addSortByInternal('syncAttempt', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySyncDomain() {
    return addSortByInternal('syncDomain', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySyncDomainDesc() {
    return addSortByInternal('syncDomain', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySyncType() {
    return addSortByInternal('syncType', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySyncTypeDesc() {
    return addSortByInternal('syncType', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySystemAcknowledged() {
    return addSortByInternal('systemAcknowledged', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenBySystemAcknowledgedDesc() {
    return addSortByInternal('systemAcknowledged', Sort.desc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByDraftSearchKey() {
    return addSortByInternal('x_7_draftSearchKey', Sort.asc);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QAfterSortBy>
      thenByDraftSearchKeyDesc() {
    return addSortByInternal('x_7_draftSearchKey', Sort.desc);
  }
}

extension FaultedStagedSyncQueryWhereDistinct
    on QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct> {
  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctByDisplayName({bool caseSensitive = true}) {
    return addDistinctByInternal('displayName', caseSensitive: caseSensitive);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctByMetadata({bool caseSensitive = true}) {
    return addDistinctByInternal('metadata', caseSensitive: caseSensitive);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctByNotificationShown() {
    return addDistinctByInternal('notificationShown');
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctByPayload({bool caseSensitive = true}) {
    return addDistinctByInternal('payload', caseSensitive: caseSensitive);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctBySearchKey({bool caseSensitive = true}) {
    return addDistinctByInternal('searchKey', caseSensitive: caseSensitive);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctBySyncAttempt() {
    return addDistinctByInternal('syncAttempt');
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctBySyncDomain({bool caseSensitive = true}) {
    return addDistinctByInternal('syncDomain', caseSensitive: caseSensitive);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctBySyncType({bool caseSensitive = true}) {
    return addDistinctByInternal('syncType', caseSensitive: caseSensitive);
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctBySystemAcknowledged() {
    return addDistinctByInternal('systemAcknowledged');
  }

  QueryBuilder<FaultedStagedSync, FaultedStagedSync, QDistinct>
      distinctByDraftSearchKey({bool caseSensitive = true}) {
    return addDistinctByInternal('x_7_draftSearchKey',
        caseSensitive: caseSensitive);
  }
}

extension FaultedStagedSyncQueryProperty
    on QueryBuilder<FaultedStagedSync, FaultedStagedSync, QQueryProperty> {
  QueryBuilder<FaultedStagedSync, String, QQueryOperations>
      displayNameProperty() {
    return addPropertyNameInternal('displayName');
  }

  QueryBuilder<FaultedStagedSync, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<FaultedStagedSync, String?, QQueryOperations>
      metadataProperty() {
    return addPropertyNameInternal('metadata');
  }

  QueryBuilder<FaultedStagedSync, bool, QQueryOperations>
      notificationShownProperty() {
    return addPropertyNameInternal('notificationShown');
  }

  QueryBuilder<FaultedStagedSync, String, QQueryOperations> payloadProperty() {
    return addPropertyNameInternal('payload');
  }

  QueryBuilder<FaultedStagedSync, String?, QQueryOperations>
      searchKeyProperty() {
    return addPropertyNameInternal('searchKey');
  }

  QueryBuilder<FaultedStagedSync, int, QQueryOperations> syncAttemptProperty() {
    return addPropertyNameInternal('syncAttempt');
  }

  QueryBuilder<FaultedStagedSync, String, QQueryOperations>
      syncDomainProperty() {
    return addPropertyNameInternal('syncDomain');
  }

  QueryBuilder<FaultedStagedSync, String, QQueryOperations> syncTypeProperty() {
    return addPropertyNameInternal('syncType');
  }

  QueryBuilder<FaultedStagedSync, bool, QQueryOperations>
      systemAcknowledgedProperty() {
    return addPropertyNameInternal('systemAcknowledged');
  }

  QueryBuilder<FaultedStagedSync, String?, QQueryOperations>
      draftSearchKeyProperty() {
    return addPropertyNameInternal('x_7_draftSearchKey');
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaultedStagedSync _$FaultedStagedSyncFromJson(Map<String, dynamic> json) =>
    FaultedStagedSync(
      syncAttempt: json['syncAttempt'] as int? ?? 0,
      syncDomain: json['syncDomain'] as String,
      syncType: json['syncType'] as String,
      displayName: json['displayName'] as String,
      payload: json['payload'] as String,
      metadata: json['metadata'] as String?,
      searchKey: json['searchKey'] as String?,
      draftSearchKey: json['draftSearchKey'] as String?,
      notificationShown: json['notificationShown'] as bool? ?? false,
      systemAcknowledged: json['systemAcknowledged'] as bool? ?? false,
    )..id = json['id'] as int?;

Map<String, dynamic> _$FaultedStagedSyncToJson(FaultedStagedSync instance) =>
    <String, dynamic>{
      'id': instance.id,
      'syncAttempt': instance.syncAttempt,
      'displayName': instance.displayName,
      'payload': instance.payload,
      'syncDomain': instance.syncDomain,
      'syncType': instance.syncType,
      'metadata': instance.metadata,
      'searchKey': instance.searchKey,
      'draftSearchKey': instance.draftSearchKey,
      'notificationShown': instance.notificationShown,
      'systemAcknowledged': instance.systemAcknowledged,
    };
