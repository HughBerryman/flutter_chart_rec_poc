// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetAssetCollection on Isar {
  IsarCollection<Asset> get assets => getCollection();
}

const AssetSchema = CollectionSchema(
  name: 'Asset',
  schema:
      '{"name":"Asset","idName":"id","properties":[{"name":"assetID","type":"String"},{"name":"assetName","type":"String"},{"name":"description","type":"String"},{"name":"equipmentName","type":"String"},{"name":"equipmentNo","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'assetID': 0,
    'assetName': 1,
    'description': 2,
    'equipmentName': 3,
    'equipmentNo': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _assetGetId,
  setId: _assetSetId,
  getLinks: _assetGetLinks,
  attachLinks: _assetAttachLinks,
  serializeNative: _assetSerializeNative,
  deserializeNative: _assetDeserializeNative,
  deserializePropNative: _assetDeserializePropNative,
  serializeWeb: _assetSerializeWeb,
  deserializeWeb: _assetDeserializeWeb,
  deserializePropWeb: _assetDeserializePropWeb,
  version: 3,
);

int? _assetGetId(Asset object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _assetSetId(Asset object, int id) {
  object.id = id;
}

List<IsarLinkBase> _assetGetLinks(Asset object) {
  return [];
}

void _assetSerializeNative(
    IsarCollection<Asset> collection,
    IsarRawObject rawObj,
    Asset object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.assetID;
  IsarUint8List? _assetID;
  if (value0 != null) {
    _assetID = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_assetID?.length ?? 0) as int;
  final value1 = object.assetName;
  IsarUint8List? _assetName;
  if (value1 != null) {
    _assetName = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_assetName?.length ?? 0) as int;
  final value2 = object.description;
  IsarUint8List? _description;
  if (value2 != null) {
    _description = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_description?.length ?? 0) as int;
  final value3 = object.equipmentName;
  IsarUint8List? _equipmentName;
  if (value3 != null) {
    _equipmentName = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_equipmentName?.length ?? 0) as int;
  final value4 = object.equipmentNo;
  IsarUint8List? _equipmentNo;
  if (value4 != null) {
    _equipmentNo = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_equipmentNo?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _assetID);
  writer.writeBytes(offsets[1], _assetName);
  writer.writeBytes(offsets[2], _description);
  writer.writeBytes(offsets[3], _equipmentName);
  writer.writeBytes(offsets[4], _equipmentNo);
}

Asset _assetDeserializeNative(IsarCollection<Asset> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Asset(
    assetID: reader.readStringOrNull(offsets[0]),
    assetName: reader.readStringOrNull(offsets[1]),
    description: reader.readStringOrNull(offsets[2]),
    equipmentName: reader.readStringOrNull(offsets[3]),
    equipmentNo: reader.readStringOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _assetDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _assetSerializeWeb(IsarCollection<Asset> collection, Asset object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'assetID', object.assetID);
  IsarNative.jsObjectSet(jsObj, 'assetName', object.assetName);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'equipmentName', object.equipmentName);
  IsarNative.jsObjectSet(jsObj, 'equipmentNo', object.equipmentNo);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  return jsObj;
}

Asset _assetDeserializeWeb(IsarCollection<Asset> collection, dynamic jsObj) {
  final object = Asset(
    assetID: IsarNative.jsObjectGet(jsObj, 'assetID'),
    assetName: IsarNative.jsObjectGet(jsObj, 'assetName'),
    description: IsarNative.jsObjectGet(jsObj, 'description'),
    equipmentName: IsarNative.jsObjectGet(jsObj, 'equipmentName'),
    equipmentNo: IsarNative.jsObjectGet(jsObj, 'equipmentNo'),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  return object;
}

P _assetDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'assetID':
      return (IsarNative.jsObjectGet(jsObj, 'assetID')) as P;
    case 'assetName':
      return (IsarNative.jsObjectGet(jsObj, 'assetName')) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
    case 'equipmentName':
      return (IsarNative.jsObjectGet(jsObj, 'equipmentName')) as P;
    case 'equipmentNo':
      return (IsarNative.jsObjectGet(jsObj, 'equipmentNo')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _assetAttachLinks(IsarCollection col, int id, Asset object) {}

extension AssetQueryWhereSort on QueryBuilder<Asset, Asset, QWhere> {
  QueryBuilder<Asset, Asset, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension AssetQueryWhere on QueryBuilder<Asset, Asset, QWhereClause> {
  QueryBuilder<Asset, Asset, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Asset, Asset, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Asset, Asset, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Asset, Asset, QAfterWhereClause> idBetween(
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

extension AssetQueryFilter on QueryBuilder<Asset, Asset, QFilterCondition> {
  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'assetID',
      value: null,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'assetID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'assetID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'assetID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'assetID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'assetID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'assetID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'assetID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'assetID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'assetName',
      value: null,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'assetName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'assetName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'assetName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'assetName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'assetName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'assetName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'assetName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> assetNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'assetName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'equipmentName',
      value: null,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'equipmentName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'equipmentName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'equipmentName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'equipmentName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'equipmentName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'equipmentName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'equipmentName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'equipmentName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'equipmentNo',
      value: null,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'equipmentNo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'equipmentNo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'equipmentNo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'equipmentNo',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'equipmentNo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'equipmentNo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'equipmentNo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> equipmentNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'equipmentNo',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Asset, Asset, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Asset, Asset, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Asset, Asset, QAfterFilterCondition> idBetween(
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
}

extension AssetQueryLinks on QueryBuilder<Asset, Asset, QFilterCondition> {}

extension AssetQueryWhereSortBy on QueryBuilder<Asset, Asset, QSortBy> {
  QueryBuilder<Asset, Asset, QAfterSortBy> sortByAssetID() {
    return addSortByInternal('assetID', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByAssetIDDesc() {
    return addSortByInternal('assetID', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByAssetName() {
    return addSortByInternal('assetName', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByAssetNameDesc() {
    return addSortByInternal('assetName', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByEquipmentName() {
    return addSortByInternal('equipmentName', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByEquipmentNameDesc() {
    return addSortByInternal('equipmentName', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByEquipmentNo() {
    return addSortByInternal('equipmentNo', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByEquipmentNoDesc() {
    return addSortByInternal('equipmentNo', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension AssetQueryWhereSortThenBy on QueryBuilder<Asset, Asset, QSortThenBy> {
  QueryBuilder<Asset, Asset, QAfterSortBy> thenByAssetID() {
    return addSortByInternal('assetID', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByAssetIDDesc() {
    return addSortByInternal('assetID', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByAssetName() {
    return addSortByInternal('assetName', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByAssetNameDesc() {
    return addSortByInternal('assetName', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByEquipmentName() {
    return addSortByInternal('equipmentName', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByEquipmentNameDesc() {
    return addSortByInternal('equipmentName', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByEquipmentNo() {
    return addSortByInternal('equipmentNo', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByEquipmentNoDesc() {
    return addSortByInternal('equipmentNo', Sort.desc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Asset, Asset, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }
}

extension AssetQueryWhereDistinct on QueryBuilder<Asset, Asset, QDistinct> {
  QueryBuilder<Asset, Asset, QDistinct> distinctByAssetID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('assetID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Asset, Asset, QDistinct> distinctByAssetName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('assetName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Asset, Asset, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<Asset, Asset, QDistinct> distinctByEquipmentName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('equipmentName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Asset, Asset, QDistinct> distinctByEquipmentNo(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('equipmentNo', caseSensitive: caseSensitive);
  }

  QueryBuilder<Asset, Asset, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }
}

extension AssetQueryProperty on QueryBuilder<Asset, Asset, QQueryProperty> {
  QueryBuilder<Asset, String?, QQueryOperations> assetIDProperty() {
    return addPropertyNameInternal('assetID');
  }

  QueryBuilder<Asset, String?, QQueryOperations> assetNameProperty() {
    return addPropertyNameInternal('assetName');
  }

  QueryBuilder<Asset, String?, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<Asset, String?, QQueryOperations> equipmentNameProperty() {
    return addPropertyNameInternal('equipmentName');
  }

  QueryBuilder<Asset, String?, QQueryOperations> equipmentNoProperty() {
    return addPropertyNameInternal('equipmentNo');
  }

  QueryBuilder<Asset, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Asset _$AssetFromJson(Map<String, dynamic> json) => Asset(
      assetName: json['assetName'] as String?,
      equipmentNo: json['equipmentNo'] as String?,
      equipmentName: json['equipmentName'] as String?,
      description: json['description'] as String?,
      assetID: json['assetID'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$AssetToJson(Asset instance) => <String, dynamic>{
      'id': instance.id,
      'assetName': instance.assetName,
      'equipmentNo': instance.equipmentNo,
      'equipmentName': instance.equipmentName,
      'description': instance.description,
      'assetID': instance.assetID,
    };
