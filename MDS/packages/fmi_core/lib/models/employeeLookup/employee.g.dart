// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetEmployeeCollection on Isar {
  IsarCollection<Employee> get employees => getCollection();
}

const EmployeeSchema = CollectionSchema(
  name: 'Employee',
  schema:
      '{"name":"Employee","idName":"id","properties":[{"name":"administrativeLocationDescription","type":"String"},{"name":"administrativeLocationID","type":"String"},{"name":"companyDescription","type":"String"},{"name":"costCenter","type":"String"},{"name":"departmentDescription","type":"String"},{"name":"departmentID","type":"String"},{"name":"displayName","type":"String"},{"name":"email","type":"String"},{"name":"employeeID","type":"String"},{"name":"exemptIndicator","type":"String"},{"name":"exemptIndicatorDescription","type":"String"},{"name":"externalCompanyID","type":"String"},{"name":"firstName","type":"String"},{"name":"hrSystemID","type":"String"},{"name":"jobTitle","type":"String"},{"name":"lastName","type":"String"},{"name":"mobilePhone","type":"String"},{"name":"officeLocation","type":"String"},{"name":"organizationalUnit","type":"String"},{"name":"organizationalUnitDescription","type":"String"},{"name":"outOfOffice","type":"Bool"},{"name":"outOfOfficeType","type":"String"},{"name":"photoUrl","type":"String"},{"name":"regionDescription","type":"String"},{"name":"regionID","type":"String"},{"name":"roomNumber","type":"String"},{"name":"supervisorEmail","type":"String"},{"name":"supervisorID","type":"String"},{"name":"supervisorJobTitle","type":"String"},{"name":"supervisorName","type":"String"},{"name":"supervisorPhotoURL","type":"String"},{"name":"workLocationDescription","type":"String"},{"name":"workLocationID","type":"String"},{"name":"workPhone","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'administrativeLocationDescription': 0,
    'administrativeLocationID': 1,
    'companyDescription': 2,
    'costCenter': 3,
    'departmentDescription': 4,
    'departmentID': 5,
    'displayName': 6,
    'email': 7,
    'employeeID': 8,
    'exemptIndicator': 9,
    'exemptIndicatorDescription': 10,
    'externalCompanyID': 11,
    'firstName': 12,
    'hrSystemID': 13,
    'jobTitle': 14,
    'lastName': 15,
    'mobilePhone': 16,
    'officeLocation': 17,
    'organizationalUnit': 18,
    'organizationalUnitDescription': 19,
    'outOfOffice': 20,
    'outOfOfficeType': 21,
    'photoUrl': 22,
    'regionDescription': 23,
    'regionID': 24,
    'roomNumber': 25,
    'supervisorEmail': 26,
    'supervisorID': 27,
    'supervisorJobTitle': 28,
    'supervisorName': 29,
    'supervisorPhotoURL': 30,
    'workLocationDescription': 31,
    'workLocationID': 32,
    'workPhone': 33
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _employeeGetId,
  setId: _employeeSetId,
  getLinks: _employeeGetLinks,
  attachLinks: _employeeAttachLinks,
  serializeNative: _employeeSerializeNative,
  deserializeNative: _employeeDeserializeNative,
  deserializePropNative: _employeeDeserializePropNative,
  serializeWeb: _employeeSerializeWeb,
  deserializeWeb: _employeeDeserializeWeb,
  deserializePropWeb: _employeeDeserializePropWeb,
  version: 3,
);

int? _employeeGetId(Employee object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _employeeSetId(Employee object, int id) {
  object.id = id;
}

List<IsarLinkBase> _employeeGetLinks(Employee object) {
  return [];
}

void _employeeSerializeNative(
    IsarCollection<Employee> collection,
    IsarRawObject rawObj,
    Employee object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.administrativeLocationDescription;
  IsarUint8List? _administrativeLocationDescription;
  if (value0 != null) {
    _administrativeLocationDescription =
        IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_administrativeLocationDescription?.length ?? 0) as int;
  final value1 = object.administrativeLocationID;
  IsarUint8List? _administrativeLocationID;
  if (value1 != null) {
    _administrativeLocationID = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_administrativeLocationID?.length ?? 0) as int;
  final value2 = object.companyDescription;
  IsarUint8List? _companyDescription;
  if (value2 != null) {
    _companyDescription = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_companyDescription?.length ?? 0) as int;
  final value3 = object.costCenter;
  IsarUint8List? _costCenter;
  if (value3 != null) {
    _costCenter = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_costCenter?.length ?? 0) as int;
  final value4 = object.departmentDescription;
  IsarUint8List? _departmentDescription;
  if (value4 != null) {
    _departmentDescription = IsarBinaryWriter.utf8Encoder.convert(value4);
  }
  dynamicSize += (_departmentDescription?.length ?? 0) as int;
  final value5 = object.departmentID;
  IsarUint8List? _departmentID;
  if (value5 != null) {
    _departmentID = IsarBinaryWriter.utf8Encoder.convert(value5);
  }
  dynamicSize += (_departmentID?.length ?? 0) as int;
  final value6 = object.displayName;
  IsarUint8List? _displayName;
  if (value6 != null) {
    _displayName = IsarBinaryWriter.utf8Encoder.convert(value6);
  }
  dynamicSize += (_displayName?.length ?? 0) as int;
  final value7 = object.email;
  IsarUint8List? _email;
  if (value7 != null) {
    _email = IsarBinaryWriter.utf8Encoder.convert(value7);
  }
  dynamicSize += (_email?.length ?? 0) as int;
  final value8 = object.employeeID;
  final _employeeID = IsarBinaryWriter.utf8Encoder.convert(value8);
  dynamicSize += (_employeeID.length) as int;
  final value9 = object.exemptIndicator;
  IsarUint8List? _exemptIndicator;
  if (value9 != null) {
    _exemptIndicator = IsarBinaryWriter.utf8Encoder.convert(value9);
  }
  dynamicSize += (_exemptIndicator?.length ?? 0) as int;
  final value10 = object.exemptIndicatorDescription;
  IsarUint8List? _exemptIndicatorDescription;
  if (value10 != null) {
    _exemptIndicatorDescription = IsarBinaryWriter.utf8Encoder.convert(value10);
  }
  dynamicSize += (_exemptIndicatorDescription?.length ?? 0) as int;
  final value11 = object.externalCompanyID;
  IsarUint8List? _externalCompanyID;
  if (value11 != null) {
    _externalCompanyID = IsarBinaryWriter.utf8Encoder.convert(value11);
  }
  dynamicSize += (_externalCompanyID?.length ?? 0) as int;
  final value12 = object.firstName;
  IsarUint8List? _firstName;
  if (value12 != null) {
    _firstName = IsarBinaryWriter.utf8Encoder.convert(value12);
  }
  dynamicSize += (_firstName?.length ?? 0) as int;
  final value13 = object.hrSystemID;
  IsarUint8List? _hrSystemID;
  if (value13 != null) {
    _hrSystemID = IsarBinaryWriter.utf8Encoder.convert(value13);
  }
  dynamicSize += (_hrSystemID?.length ?? 0) as int;
  final value14 = object.jobTitle;
  IsarUint8List? _jobTitle;
  if (value14 != null) {
    _jobTitle = IsarBinaryWriter.utf8Encoder.convert(value14);
  }
  dynamicSize += (_jobTitle?.length ?? 0) as int;
  final value15 = object.lastName;
  IsarUint8List? _lastName;
  if (value15 != null) {
    _lastName = IsarBinaryWriter.utf8Encoder.convert(value15);
  }
  dynamicSize += (_lastName?.length ?? 0) as int;
  final value16 = object.mobilePhone;
  IsarUint8List? _mobilePhone;
  if (value16 != null) {
    _mobilePhone = IsarBinaryWriter.utf8Encoder.convert(value16);
  }
  dynamicSize += (_mobilePhone?.length ?? 0) as int;
  final value17 = object.officeLocation;
  IsarUint8List? _officeLocation;
  if (value17 != null) {
    _officeLocation = IsarBinaryWriter.utf8Encoder.convert(value17);
  }
  dynamicSize += (_officeLocation?.length ?? 0) as int;
  final value18 = object.organizationalUnit;
  IsarUint8List? _organizationalUnit;
  if (value18 != null) {
    _organizationalUnit = IsarBinaryWriter.utf8Encoder.convert(value18);
  }
  dynamicSize += (_organizationalUnit?.length ?? 0) as int;
  final value19 = object.organizationalUnitDescription;
  IsarUint8List? _organizationalUnitDescription;
  if (value19 != null) {
    _organizationalUnitDescription =
        IsarBinaryWriter.utf8Encoder.convert(value19);
  }
  dynamicSize += (_organizationalUnitDescription?.length ?? 0) as int;
  final value20 = object.outOfOffice;
  final _outOfOffice = value20;
  final value21 = object.outOfOfficeType;
  IsarUint8List? _outOfOfficeType;
  if (value21 != null) {
    _outOfOfficeType = IsarBinaryWriter.utf8Encoder.convert(value21);
  }
  dynamicSize += (_outOfOfficeType?.length ?? 0) as int;
  final value22 = object.photoUrl;
  IsarUint8List? _photoUrl;
  if (value22 != null) {
    _photoUrl = IsarBinaryWriter.utf8Encoder.convert(value22);
  }
  dynamicSize += (_photoUrl?.length ?? 0) as int;
  final value23 = object.regionDescription;
  IsarUint8List? _regionDescription;
  if (value23 != null) {
    _regionDescription = IsarBinaryWriter.utf8Encoder.convert(value23);
  }
  dynamicSize += (_regionDescription?.length ?? 0) as int;
  final value24 = object.regionID;
  IsarUint8List? _regionID;
  if (value24 != null) {
    _regionID = IsarBinaryWriter.utf8Encoder.convert(value24);
  }
  dynamicSize += (_regionID?.length ?? 0) as int;
  final value25 = object.roomNumber;
  IsarUint8List? _roomNumber;
  if (value25 != null) {
    _roomNumber = IsarBinaryWriter.utf8Encoder.convert(value25);
  }
  dynamicSize += (_roomNumber?.length ?? 0) as int;
  final value26 = object.supervisorEmail;
  IsarUint8List? _supervisorEmail;
  if (value26 != null) {
    _supervisorEmail = IsarBinaryWriter.utf8Encoder.convert(value26);
  }
  dynamicSize += (_supervisorEmail?.length ?? 0) as int;
  final value27 = object.supervisorID;
  IsarUint8List? _supervisorID;
  if (value27 != null) {
    _supervisorID = IsarBinaryWriter.utf8Encoder.convert(value27);
  }
  dynamicSize += (_supervisorID?.length ?? 0) as int;
  final value28 = object.supervisorJobTitle;
  IsarUint8List? _supervisorJobTitle;
  if (value28 != null) {
    _supervisorJobTitle = IsarBinaryWriter.utf8Encoder.convert(value28);
  }
  dynamicSize += (_supervisorJobTitle?.length ?? 0) as int;
  final value29 = object.supervisorName;
  IsarUint8List? _supervisorName;
  if (value29 != null) {
    _supervisorName = IsarBinaryWriter.utf8Encoder.convert(value29);
  }
  dynamicSize += (_supervisorName?.length ?? 0) as int;
  final value30 = object.supervisorPhotoURL;
  IsarUint8List? _supervisorPhotoURL;
  if (value30 != null) {
    _supervisorPhotoURL = IsarBinaryWriter.utf8Encoder.convert(value30);
  }
  dynamicSize += (_supervisorPhotoURL?.length ?? 0) as int;
  final value31 = object.workLocationDescription;
  IsarUint8List? _workLocationDescription;
  if (value31 != null) {
    _workLocationDescription = IsarBinaryWriter.utf8Encoder.convert(value31);
  }
  dynamicSize += (_workLocationDescription?.length ?? 0) as int;
  final value32 = object.workLocationID;
  IsarUint8List? _workLocationID;
  if (value32 != null) {
    _workLocationID = IsarBinaryWriter.utf8Encoder.convert(value32);
  }
  dynamicSize += (_workLocationID?.length ?? 0) as int;
  final value33 = object.workPhone;
  IsarUint8List? _workPhone;
  if (value33 != null) {
    _workPhone = IsarBinaryWriter.utf8Encoder.convert(value33);
  }
  dynamicSize += (_workPhone?.length ?? 0) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _administrativeLocationDescription);
  writer.writeBytes(offsets[1], _administrativeLocationID);
  writer.writeBytes(offsets[2], _companyDescription);
  writer.writeBytes(offsets[3], _costCenter);
  writer.writeBytes(offsets[4], _departmentDescription);
  writer.writeBytes(offsets[5], _departmentID);
  writer.writeBytes(offsets[6], _displayName);
  writer.writeBytes(offsets[7], _email);
  writer.writeBytes(offsets[8], _employeeID);
  writer.writeBytes(offsets[9], _exemptIndicator);
  writer.writeBytes(offsets[10], _exemptIndicatorDescription);
  writer.writeBytes(offsets[11], _externalCompanyID);
  writer.writeBytes(offsets[12], _firstName);
  writer.writeBytes(offsets[13], _hrSystemID);
  writer.writeBytes(offsets[14], _jobTitle);
  writer.writeBytes(offsets[15], _lastName);
  writer.writeBytes(offsets[16], _mobilePhone);
  writer.writeBytes(offsets[17], _officeLocation);
  writer.writeBytes(offsets[18], _organizationalUnit);
  writer.writeBytes(offsets[19], _organizationalUnitDescription);
  writer.writeBool(offsets[20], _outOfOffice);
  writer.writeBytes(offsets[21], _outOfOfficeType);
  writer.writeBytes(offsets[22], _photoUrl);
  writer.writeBytes(offsets[23], _regionDescription);
  writer.writeBytes(offsets[24], _regionID);
  writer.writeBytes(offsets[25], _roomNumber);
  writer.writeBytes(offsets[26], _supervisorEmail);
  writer.writeBytes(offsets[27], _supervisorID);
  writer.writeBytes(offsets[28], _supervisorJobTitle);
  writer.writeBytes(offsets[29], _supervisorName);
  writer.writeBytes(offsets[30], _supervisorPhotoURL);
  writer.writeBytes(offsets[31], _workLocationDescription);
  writer.writeBytes(offsets[32], _workLocationID);
  writer.writeBytes(offsets[33], _workPhone);
}

Employee _employeeDeserializeNative(IsarCollection<Employee> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Employee(
    administrativeLocationDescription: reader.readStringOrNull(offsets[0]),
    administrativeLocationID: reader.readStringOrNull(offsets[1]),
    companyDescription: reader.readStringOrNull(offsets[2]),
    costCenter: reader.readStringOrNull(offsets[3]),
    departmentDescription: reader.readStringOrNull(offsets[4]),
    departmentID: reader.readStringOrNull(offsets[5]),
    displayName: reader.readStringOrNull(offsets[6]),
    email: reader.readStringOrNull(offsets[7]),
    employeeID: reader.readString(offsets[8]),
    exemptIndicator: reader.readStringOrNull(offsets[9]),
    exemptIndicatorDescription: reader.readStringOrNull(offsets[10]),
    externalCompanyID: reader.readStringOrNull(offsets[11]),
    firstName: reader.readStringOrNull(offsets[12]),
    hrSystemID: reader.readStringOrNull(offsets[13]),
    jobTitle: reader.readStringOrNull(offsets[14]),
    lastName: reader.readStringOrNull(offsets[15]),
    mobilePhone: reader.readStringOrNull(offsets[16]),
    officeLocation: reader.readStringOrNull(offsets[17]),
    organizationalUnit: reader.readStringOrNull(offsets[18]),
    organizationalUnitDescription: reader.readStringOrNull(offsets[19]),
    outOfOffice: reader.readBool(offsets[20]),
    photoUrl: reader.readStringOrNull(offsets[22]),
    regionDescription: reader.readStringOrNull(offsets[23]),
    regionID: reader.readStringOrNull(offsets[24]),
    roomNumber: reader.readStringOrNull(offsets[25]),
    supervisorEmail: reader.readStringOrNull(offsets[26]),
    supervisorID: reader.readStringOrNull(offsets[27]),
    supervisorJobTitle: reader.readStringOrNull(offsets[28]),
    supervisorName: reader.readStringOrNull(offsets[29]),
    supervisorPhotoURL: reader.readStringOrNull(offsets[30]),
    workLocationDescription: reader.readStringOrNull(offsets[31]),
    workLocationID: reader.readStringOrNull(offsets[32]),
    workPhone: reader.readStringOrNull(offsets[33]),
  );
  object.id = id;
  object.outOfOfficeType = reader.readStringOrNull(offsets[21]);
  return object;
}

P _employeeDeserializePropNative<P>(
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
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readBool(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _employeeSerializeWeb(
    IsarCollection<Employee> collection, Employee object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'administrativeLocationDescription',
      object.administrativeLocationDescription);
  IsarNative.jsObjectSet(
      jsObj, 'administrativeLocationID', object.administrativeLocationID);
  IsarNative.jsObjectSet(
      jsObj, 'companyDescription', object.companyDescription);
  IsarNative.jsObjectSet(jsObj, 'costCenter', object.costCenter);
  IsarNative.jsObjectSet(
      jsObj, 'departmentDescription', object.departmentDescription);
  IsarNative.jsObjectSet(jsObj, 'departmentID', object.departmentID);
  IsarNative.jsObjectSet(jsObj, 'displayName', object.displayName);
  IsarNative.jsObjectSet(jsObj, 'email', object.email);
  IsarNative.jsObjectSet(jsObj, 'employeeID', object.employeeID);
  IsarNative.jsObjectSet(jsObj, 'exemptIndicator', object.exemptIndicator);
  IsarNative.jsObjectSet(
      jsObj, 'exemptIndicatorDescription', object.exemptIndicatorDescription);
  IsarNative.jsObjectSet(jsObj, 'externalCompanyID', object.externalCompanyID);
  IsarNative.jsObjectSet(jsObj, 'firstName', object.firstName);
  IsarNative.jsObjectSet(jsObj, 'hrSystemID', object.hrSystemID);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'jobTitle', object.jobTitle);
  IsarNative.jsObjectSet(jsObj, 'lastName', object.lastName);
  IsarNative.jsObjectSet(jsObj, 'mobilePhone', object.mobilePhone);
  IsarNative.jsObjectSet(jsObj, 'officeLocation', object.officeLocation);
  IsarNative.jsObjectSet(
      jsObj, 'organizationalUnit', object.organizationalUnit);
  IsarNative.jsObjectSet(jsObj, 'organizationalUnitDescription',
      object.organizationalUnitDescription);
  IsarNative.jsObjectSet(jsObj, 'outOfOffice', object.outOfOffice);
  IsarNative.jsObjectSet(jsObj, 'outOfOfficeType', object.outOfOfficeType);
  IsarNative.jsObjectSet(jsObj, 'photoUrl', object.photoUrl);
  IsarNative.jsObjectSet(jsObj, 'regionDescription', object.regionDescription);
  IsarNative.jsObjectSet(jsObj, 'regionID', object.regionID);
  IsarNative.jsObjectSet(jsObj, 'roomNumber', object.roomNumber);
  IsarNative.jsObjectSet(jsObj, 'supervisorEmail', object.supervisorEmail);
  IsarNative.jsObjectSet(jsObj, 'supervisorID', object.supervisorID);
  IsarNative.jsObjectSet(
      jsObj, 'supervisorJobTitle', object.supervisorJobTitle);
  IsarNative.jsObjectSet(jsObj, 'supervisorName', object.supervisorName);
  IsarNative.jsObjectSet(
      jsObj, 'supervisorPhotoURL', object.supervisorPhotoURL);
  IsarNative.jsObjectSet(
      jsObj, 'workLocationDescription', object.workLocationDescription);
  IsarNative.jsObjectSet(jsObj, 'workLocationID', object.workLocationID);
  IsarNative.jsObjectSet(jsObj, 'workPhone', object.workPhone);
  return jsObj;
}

Employee _employeeDeserializeWeb(
    IsarCollection<Employee> collection, dynamic jsObj) {
  final object = Employee(
    administrativeLocationDescription:
        IsarNative.jsObjectGet(jsObj, 'administrativeLocationDescription'),
    administrativeLocationID:
        IsarNative.jsObjectGet(jsObj, 'administrativeLocationID'),
    companyDescription: IsarNative.jsObjectGet(jsObj, 'companyDescription'),
    costCenter: IsarNative.jsObjectGet(jsObj, 'costCenter'),
    departmentDescription:
        IsarNative.jsObjectGet(jsObj, 'departmentDescription'),
    departmentID: IsarNative.jsObjectGet(jsObj, 'departmentID'),
    displayName: IsarNative.jsObjectGet(jsObj, 'displayName'),
    email: IsarNative.jsObjectGet(jsObj, 'email'),
    employeeID: IsarNative.jsObjectGet(jsObj, 'employeeID') ?? '',
    exemptIndicator: IsarNative.jsObjectGet(jsObj, 'exemptIndicator'),
    exemptIndicatorDescription:
        IsarNative.jsObjectGet(jsObj, 'exemptIndicatorDescription'),
    externalCompanyID: IsarNative.jsObjectGet(jsObj, 'externalCompanyID'),
    firstName: IsarNative.jsObjectGet(jsObj, 'firstName'),
    hrSystemID: IsarNative.jsObjectGet(jsObj, 'hrSystemID'),
    jobTitle: IsarNative.jsObjectGet(jsObj, 'jobTitle'),
    lastName: IsarNative.jsObjectGet(jsObj, 'lastName'),
    mobilePhone: IsarNative.jsObjectGet(jsObj, 'mobilePhone'),
    officeLocation: IsarNative.jsObjectGet(jsObj, 'officeLocation'),
    organizationalUnit: IsarNative.jsObjectGet(jsObj, 'organizationalUnit'),
    organizationalUnitDescription:
        IsarNative.jsObjectGet(jsObj, 'organizationalUnitDescription'),
    outOfOffice: IsarNative.jsObjectGet(jsObj, 'outOfOffice') ?? false,
    photoUrl: IsarNative.jsObjectGet(jsObj, 'photoUrl'),
    regionDescription: IsarNative.jsObjectGet(jsObj, 'regionDescription'),
    regionID: IsarNative.jsObjectGet(jsObj, 'regionID'),
    roomNumber: IsarNative.jsObjectGet(jsObj, 'roomNumber'),
    supervisorEmail: IsarNative.jsObjectGet(jsObj, 'supervisorEmail'),
    supervisorID: IsarNative.jsObjectGet(jsObj, 'supervisorID'),
    supervisorJobTitle: IsarNative.jsObjectGet(jsObj, 'supervisorJobTitle'),
    supervisorName: IsarNative.jsObjectGet(jsObj, 'supervisorName'),
    supervisorPhotoURL: IsarNative.jsObjectGet(jsObj, 'supervisorPhotoURL'),
    workLocationDescription:
        IsarNative.jsObjectGet(jsObj, 'workLocationDescription'),
    workLocationID: IsarNative.jsObjectGet(jsObj, 'workLocationID'),
    workPhone: IsarNative.jsObjectGet(jsObj, 'workPhone'),
  );
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.outOfOfficeType = IsarNative.jsObjectGet(jsObj, 'outOfOfficeType');
  return object;
}

P _employeeDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'administrativeLocationDescription':
      return (IsarNative.jsObjectGet(
          jsObj, 'administrativeLocationDescription')) as P;
    case 'administrativeLocationID':
      return (IsarNative.jsObjectGet(jsObj, 'administrativeLocationID')) as P;
    case 'companyDescription':
      return (IsarNative.jsObjectGet(jsObj, 'companyDescription')) as P;
    case 'costCenter':
      return (IsarNative.jsObjectGet(jsObj, 'costCenter')) as P;
    case 'departmentDescription':
      return (IsarNative.jsObjectGet(jsObj, 'departmentDescription')) as P;
    case 'departmentID':
      return (IsarNative.jsObjectGet(jsObj, 'departmentID')) as P;
    case 'displayName':
      return (IsarNative.jsObjectGet(jsObj, 'displayName')) as P;
    case 'email':
      return (IsarNative.jsObjectGet(jsObj, 'email')) as P;
    case 'employeeID':
      return (IsarNative.jsObjectGet(jsObj, 'employeeID') ?? '') as P;
    case 'exemptIndicator':
      return (IsarNative.jsObjectGet(jsObj, 'exemptIndicator')) as P;
    case 'exemptIndicatorDescription':
      return (IsarNative.jsObjectGet(jsObj, 'exemptIndicatorDescription')) as P;
    case 'externalCompanyID':
      return (IsarNative.jsObjectGet(jsObj, 'externalCompanyID')) as P;
    case 'firstName':
      return (IsarNative.jsObjectGet(jsObj, 'firstName')) as P;
    case 'hrSystemID':
      return (IsarNative.jsObjectGet(jsObj, 'hrSystemID')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'jobTitle':
      return (IsarNative.jsObjectGet(jsObj, 'jobTitle')) as P;
    case 'lastName':
      return (IsarNative.jsObjectGet(jsObj, 'lastName')) as P;
    case 'mobilePhone':
      return (IsarNative.jsObjectGet(jsObj, 'mobilePhone')) as P;
    case 'officeLocation':
      return (IsarNative.jsObjectGet(jsObj, 'officeLocation')) as P;
    case 'organizationalUnit':
      return (IsarNative.jsObjectGet(jsObj, 'organizationalUnit')) as P;
    case 'organizationalUnitDescription':
      return (IsarNative.jsObjectGet(jsObj, 'organizationalUnitDescription'))
          as P;
    case 'outOfOffice':
      return (IsarNative.jsObjectGet(jsObj, 'outOfOffice') ?? false) as P;
    case 'outOfOfficeType':
      return (IsarNative.jsObjectGet(jsObj, 'outOfOfficeType')) as P;
    case 'photoUrl':
      return (IsarNative.jsObjectGet(jsObj, 'photoUrl')) as P;
    case 'regionDescription':
      return (IsarNative.jsObjectGet(jsObj, 'regionDescription')) as P;
    case 'regionID':
      return (IsarNative.jsObjectGet(jsObj, 'regionID')) as P;
    case 'roomNumber':
      return (IsarNative.jsObjectGet(jsObj, 'roomNumber')) as P;
    case 'supervisorEmail':
      return (IsarNative.jsObjectGet(jsObj, 'supervisorEmail')) as P;
    case 'supervisorID':
      return (IsarNative.jsObjectGet(jsObj, 'supervisorID')) as P;
    case 'supervisorJobTitle':
      return (IsarNative.jsObjectGet(jsObj, 'supervisorJobTitle')) as P;
    case 'supervisorName':
      return (IsarNative.jsObjectGet(jsObj, 'supervisorName')) as P;
    case 'supervisorPhotoURL':
      return (IsarNative.jsObjectGet(jsObj, 'supervisorPhotoURL')) as P;
    case 'workLocationDescription':
      return (IsarNative.jsObjectGet(jsObj, 'workLocationDescription')) as P;
    case 'workLocationID':
      return (IsarNative.jsObjectGet(jsObj, 'workLocationID')) as P;
    case 'workPhone':
      return (IsarNative.jsObjectGet(jsObj, 'workPhone')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _employeeAttachLinks(IsarCollection col, int id, Employee object) {}

extension EmployeeQueryWhereSort on QueryBuilder<Employee, Employee, QWhere> {
  QueryBuilder<Employee, Employee, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension EmployeeQueryWhere on QueryBuilder<Employee, Employee, QWhereClause> {
  QueryBuilder<Employee, Employee, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Employee, Employee, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> idBetween(
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

extension EmployeeQueryFilter
    on QueryBuilder<Employee, Employee, QFilterCondition> {
  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'administrativeLocationDescription',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'administrativeLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'administrativeLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'administrativeLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'administrativeLocationDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'administrativeLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'administrativeLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'administrativeLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'administrativeLocationDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'administrativeLocationID',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'administrativeLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'administrativeLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'administrativeLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'administrativeLocationID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'administrativeLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'administrativeLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDContains(String value,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'administrativeLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      administrativeLocationIDMatches(String pattern,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'administrativeLocationID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'companyDescription',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'companyDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'companyDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'companyDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'companyDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'companyDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'companyDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'companyDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      companyDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'companyDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'costCenter',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'costCenter',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'costCenter',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'costCenter',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'costCenter',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'costCenter',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'costCenter',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'costCenter',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costCenterMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'costCenter',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'departmentDescription',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'departmentDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'departmentDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'departmentDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'departmentDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'departmentDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'departmentDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'departmentDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'departmentDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> departmentIDIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'departmentID',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> departmentIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'departmentID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentIDGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'departmentID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> departmentIDLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'departmentID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> departmentIDBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'departmentID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      departmentIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'departmentID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> departmentIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'departmentID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> departmentIDContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'departmentID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> departmentIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'departmentID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> displayNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'displayName',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> displayNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      displayNameGreaterThan(
    String? value, {
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> displayNameLessThan(
    String? value, {
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> displayNameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> displayNameStartsWith(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> displayNameEndsWith(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> displayNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'displayName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> displayNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'displayName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'email',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'email',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'email',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'employeeID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeIDGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'employeeID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeIDLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'employeeID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeIDBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'employeeID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'employeeID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'employeeID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeIDContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'employeeID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'employeeID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'exemptIndicator',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'exemptIndicator',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'exemptIndicator',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'exemptIndicator',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'exemptIndicator',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'exemptIndicator',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'exemptIndicator',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'exemptIndicator',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'exemptIndicator',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'exemptIndicatorDescription',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'exemptIndicatorDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'exemptIndicatorDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'exemptIndicatorDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'exemptIndicatorDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'exemptIndicatorDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'exemptIndicatorDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'exemptIndicatorDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      exemptIndicatorDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'exemptIndicatorDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'externalCompanyID',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'externalCompanyID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'externalCompanyID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'externalCompanyID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'externalCompanyID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'externalCompanyID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'externalCompanyID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'externalCompanyID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      externalCompanyIDMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'externalCompanyID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'firstName',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'firstName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'firstName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firstNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'firstName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'hrSystemID',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hrSystemID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hrSystemID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hrSystemID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hrSystemID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'hrSystemID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'hrSystemID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'hrSystemID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hrSystemIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'hrSystemID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'jobTitle',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'jobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'jobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'jobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'jobTitle',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'jobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'jobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'jobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> jobTitleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'jobTitle',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'lastName',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'lastName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> lastNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'lastName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> mobilePhoneIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'mobilePhone',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> mobilePhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'mobilePhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      mobilePhoneGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'mobilePhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> mobilePhoneLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'mobilePhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> mobilePhoneBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'mobilePhone',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> mobilePhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'mobilePhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> mobilePhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'mobilePhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> mobilePhoneContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'mobilePhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> mobilePhoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'mobilePhone',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      officeLocationIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'officeLocation',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> officeLocationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'officeLocation',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      officeLocationGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'officeLocation',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      officeLocationLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'officeLocation',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> officeLocationBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'officeLocation',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      officeLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'officeLocation',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      officeLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'officeLocation',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      officeLocationContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'officeLocation',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> officeLocationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'officeLocation',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'organizationalUnit',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'organizationalUnit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'organizationalUnit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'organizationalUnit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'organizationalUnit',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'organizationalUnit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'organizationalUnit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'organizationalUnit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'organizationalUnit',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'organizationalUnitDescription',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'organizationalUnitDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'organizationalUnitDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'organizationalUnitDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'organizationalUnitDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'organizationalUnitDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'organizationalUnitDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'organizationalUnitDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      organizationalUnitDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'organizationalUnitDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> outOfOfficeEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'outOfOffice',
      value: value,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'outOfOfficeType',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'outOfOfficeType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'outOfOfficeType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'outOfOfficeType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'outOfOfficeType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'outOfOfficeType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'outOfOfficeType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'outOfOfficeType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      outOfOfficeTypeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'outOfOfficeType',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'photoUrl',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'photoUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'photoUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'photoUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'photoUrl',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'photoUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'photoUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'photoUrl',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> photoUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'photoUrl',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'regionDescription',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'regionDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'regionDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'regionDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'regionDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'regionDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'regionDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'regionDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      regionDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'regionDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'regionID',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'regionID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'regionID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'regionID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'regionID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'regionID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'regionID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'regionID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> regionIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'regionID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'roomNumber',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'roomNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'roomNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'roomNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'roomNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'roomNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'roomNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'roomNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> roomNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'roomNumber',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'supervisorEmail',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'supervisorEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'supervisorEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'supervisorEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'supervisorEmail',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'supervisorEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'supervisorEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'supervisorEmail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorEmailMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'supervisorEmail',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorIDIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'supervisorID',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'supervisorID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorIDGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'supervisorID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorIDLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'supervisorID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorIDBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'supervisorID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'supervisorID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'supervisorID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorIDContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'supervisorID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'supervisorID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'supervisorJobTitle',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'supervisorJobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'supervisorJobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'supervisorJobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'supervisorJobTitle',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'supervisorJobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'supervisorJobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'supervisorJobTitle',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorJobTitleMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'supervisorJobTitle',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'supervisorName',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'supervisorName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'supervisorName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'supervisorName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'supervisorName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'supervisorName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'supervisorName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'supervisorName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> supervisorNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'supervisorName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'supervisorPhotoURL',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'supervisorPhotoURL',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'supervisorPhotoURL',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'supervisorPhotoURL',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'supervisorPhotoURL',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'supervisorPhotoURL',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'supervisorPhotoURL',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'supervisorPhotoURL',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      supervisorPhotoURLMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'supervisorPhotoURL',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'workLocationDescription',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'workLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'workLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'workLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'workLocationDescription',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'workLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'workLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionContains(String value,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'workLocationDescription',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationDescriptionMatches(String pattern,
          {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'workLocationDescription',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationIDIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'workLocationID',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workLocationIDEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'workLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationIDGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'workLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationIDLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'workLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workLocationIDBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'workLocationID',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'workLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'workLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      workLocationIDContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'workLocationID',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workLocationIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'workLocationID',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'workPhone',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'workPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'workPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'workPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'workPhone',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'workPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'workPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'workPhone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> workPhoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'workPhone',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension EmployeeQueryLinks
    on QueryBuilder<Employee, Employee, QFilterCondition> {}

extension EmployeeQueryWhereSortBy
    on QueryBuilder<Employee, Employee, QSortBy> {
  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByAdministrativeLocationDescription() {
    return addSortByInternal('administrativeLocationDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByAdministrativeLocationDescriptionDesc() {
    return addSortByInternal('administrativeLocationDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByAdministrativeLocationID() {
    return addSortByInternal('administrativeLocationID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByAdministrativeLocationIDDesc() {
    return addSortByInternal('administrativeLocationID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByCompanyDescription() {
    return addSortByInternal('companyDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByCompanyDescriptionDesc() {
    return addSortByInternal('companyDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByCostCenter() {
    return addSortByInternal('costCenter', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByCostCenterDesc() {
    return addSortByInternal('costCenter', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByDepartmentDescription() {
    return addSortByInternal('departmentDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByDepartmentDescriptionDesc() {
    return addSortByInternal('departmentDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByDepartmentID() {
    return addSortByInternal('departmentID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByDepartmentIDDesc() {
    return addSortByInternal('departmentID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByDisplayName() {
    return addSortByInternal('displayName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByDisplayNameDesc() {
    return addSortByInternal('displayName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByEmployeeID() {
    return addSortByInternal('employeeID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByEmployeeIDDesc() {
    return addSortByInternal('employeeID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByExemptIndicator() {
    return addSortByInternal('exemptIndicator', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByExemptIndicatorDesc() {
    return addSortByInternal('exemptIndicator', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByExemptIndicatorDescription() {
    return addSortByInternal('exemptIndicatorDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByExemptIndicatorDescriptionDesc() {
    return addSortByInternal('exemptIndicatorDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByExternalCompanyID() {
    return addSortByInternal('externalCompanyID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByExternalCompanyIDDesc() {
    return addSortByInternal('externalCompanyID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByFirstName() {
    return addSortByInternal('firstName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByFirstNameDesc() {
    return addSortByInternal('firstName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByHrSystemID() {
    return addSortByInternal('hrSystemID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByHrSystemIDDesc() {
    return addSortByInternal('hrSystemID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByJobTitle() {
    return addSortByInternal('jobTitle', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByJobTitleDesc() {
    return addSortByInternal('jobTitle', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByLastName() {
    return addSortByInternal('lastName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByLastNameDesc() {
    return addSortByInternal('lastName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByMobilePhone() {
    return addSortByInternal('mobilePhone', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByMobilePhoneDesc() {
    return addSortByInternal('mobilePhone', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByOfficeLocation() {
    return addSortByInternal('officeLocation', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByOfficeLocationDesc() {
    return addSortByInternal('officeLocation', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByOrganizationalUnit() {
    return addSortByInternal('organizationalUnit', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByOrganizationalUnitDesc() {
    return addSortByInternal('organizationalUnit', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByOrganizationalUnitDescription() {
    return addSortByInternal('organizationalUnitDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByOrganizationalUnitDescriptionDesc() {
    return addSortByInternal('organizationalUnitDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByOutOfOffice() {
    return addSortByInternal('outOfOffice', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByOutOfOfficeDesc() {
    return addSortByInternal('outOfOffice', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByOutOfOfficeType() {
    return addSortByInternal('outOfOfficeType', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByOutOfOfficeTypeDesc() {
    return addSortByInternal('outOfOfficeType', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByPhotoUrl() {
    return addSortByInternal('photoUrl', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByPhotoUrlDesc() {
    return addSortByInternal('photoUrl', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByRegionDescription() {
    return addSortByInternal('regionDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByRegionDescriptionDesc() {
    return addSortByInternal('regionDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByRegionID() {
    return addSortByInternal('regionID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByRegionIDDesc() {
    return addSortByInternal('regionID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByRoomNumber() {
    return addSortByInternal('roomNumber', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByRoomNumberDesc() {
    return addSortByInternal('roomNumber', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySupervisorEmail() {
    return addSortByInternal('supervisorEmail', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySupervisorEmailDesc() {
    return addSortByInternal('supervisorEmail', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySupervisorID() {
    return addSortByInternal('supervisorID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySupervisorIDDesc() {
    return addSortByInternal('supervisorID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySupervisorJobTitle() {
    return addSortByInternal('supervisorJobTitle', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortBySupervisorJobTitleDesc() {
    return addSortByInternal('supervisorJobTitle', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySupervisorName() {
    return addSortByInternal('supervisorName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySupervisorNameDesc() {
    return addSortByInternal('supervisorName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySupervisorPhotoURL() {
    return addSortByInternal('supervisorPhotoURL', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortBySupervisorPhotoURLDesc() {
    return addSortByInternal('supervisorPhotoURL', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByWorkLocationDescription() {
    return addSortByInternal('workLocationDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      sortByWorkLocationDescriptionDesc() {
    return addSortByInternal('workLocationDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByWorkLocationID() {
    return addSortByInternal('workLocationID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByWorkLocationIDDesc() {
    return addSortByInternal('workLocationID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByWorkPhone() {
    return addSortByInternal('workPhone', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByWorkPhoneDesc() {
    return addSortByInternal('workPhone', Sort.desc);
  }
}

extension EmployeeQueryWhereSortThenBy
    on QueryBuilder<Employee, Employee, QSortThenBy> {
  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByAdministrativeLocationDescription() {
    return addSortByInternal('administrativeLocationDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByAdministrativeLocationDescriptionDesc() {
    return addSortByInternal('administrativeLocationDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByAdministrativeLocationID() {
    return addSortByInternal('administrativeLocationID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByAdministrativeLocationIDDesc() {
    return addSortByInternal('administrativeLocationID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByCompanyDescription() {
    return addSortByInternal('companyDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByCompanyDescriptionDesc() {
    return addSortByInternal('companyDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByCostCenter() {
    return addSortByInternal('costCenter', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByCostCenterDesc() {
    return addSortByInternal('costCenter', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByDepartmentDescription() {
    return addSortByInternal('departmentDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByDepartmentDescriptionDesc() {
    return addSortByInternal('departmentDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByDepartmentID() {
    return addSortByInternal('departmentID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByDepartmentIDDesc() {
    return addSortByInternal('departmentID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByDisplayName() {
    return addSortByInternal('displayName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByDisplayNameDesc() {
    return addSortByInternal('displayName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByEmployeeID() {
    return addSortByInternal('employeeID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByEmployeeIDDesc() {
    return addSortByInternal('employeeID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByExemptIndicator() {
    return addSortByInternal('exemptIndicator', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByExemptIndicatorDesc() {
    return addSortByInternal('exemptIndicator', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByExemptIndicatorDescription() {
    return addSortByInternal('exemptIndicatorDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByExemptIndicatorDescriptionDesc() {
    return addSortByInternal('exemptIndicatorDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByExternalCompanyID() {
    return addSortByInternal('externalCompanyID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByExternalCompanyIDDesc() {
    return addSortByInternal('externalCompanyID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByFirstName() {
    return addSortByInternal('firstName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByFirstNameDesc() {
    return addSortByInternal('firstName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByHrSystemID() {
    return addSortByInternal('hrSystemID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByHrSystemIDDesc() {
    return addSortByInternal('hrSystemID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByJobTitle() {
    return addSortByInternal('jobTitle', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByJobTitleDesc() {
    return addSortByInternal('jobTitle', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByLastName() {
    return addSortByInternal('lastName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByLastNameDesc() {
    return addSortByInternal('lastName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByMobilePhone() {
    return addSortByInternal('mobilePhone', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByMobilePhoneDesc() {
    return addSortByInternal('mobilePhone', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByOfficeLocation() {
    return addSortByInternal('officeLocation', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByOfficeLocationDesc() {
    return addSortByInternal('officeLocation', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByOrganizationalUnit() {
    return addSortByInternal('organizationalUnit', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByOrganizationalUnitDesc() {
    return addSortByInternal('organizationalUnit', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByOrganizationalUnitDescription() {
    return addSortByInternal('organizationalUnitDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByOrganizationalUnitDescriptionDesc() {
    return addSortByInternal('organizationalUnitDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByOutOfOffice() {
    return addSortByInternal('outOfOffice', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByOutOfOfficeDesc() {
    return addSortByInternal('outOfOffice', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByOutOfOfficeType() {
    return addSortByInternal('outOfOfficeType', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByOutOfOfficeTypeDesc() {
    return addSortByInternal('outOfOfficeType', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByPhotoUrl() {
    return addSortByInternal('photoUrl', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByPhotoUrlDesc() {
    return addSortByInternal('photoUrl', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByRegionDescription() {
    return addSortByInternal('regionDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByRegionDescriptionDesc() {
    return addSortByInternal('regionDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByRegionID() {
    return addSortByInternal('regionID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByRegionIDDesc() {
    return addSortByInternal('regionID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByRoomNumber() {
    return addSortByInternal('roomNumber', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByRoomNumberDesc() {
    return addSortByInternal('roomNumber', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySupervisorEmail() {
    return addSortByInternal('supervisorEmail', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySupervisorEmailDesc() {
    return addSortByInternal('supervisorEmail', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySupervisorID() {
    return addSortByInternal('supervisorID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySupervisorIDDesc() {
    return addSortByInternal('supervisorID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySupervisorJobTitle() {
    return addSortByInternal('supervisorJobTitle', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenBySupervisorJobTitleDesc() {
    return addSortByInternal('supervisorJobTitle', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySupervisorName() {
    return addSortByInternal('supervisorName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySupervisorNameDesc() {
    return addSortByInternal('supervisorName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySupervisorPhotoURL() {
    return addSortByInternal('supervisorPhotoURL', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenBySupervisorPhotoURLDesc() {
    return addSortByInternal('supervisorPhotoURL', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByWorkLocationDescription() {
    return addSortByInternal('workLocationDescription', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy>
      thenByWorkLocationDescriptionDesc() {
    return addSortByInternal('workLocationDescription', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByWorkLocationID() {
    return addSortByInternal('workLocationID', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByWorkLocationIDDesc() {
    return addSortByInternal('workLocationID', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByWorkPhone() {
    return addSortByInternal('workPhone', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByWorkPhoneDesc() {
    return addSortByInternal('workPhone', Sort.desc);
  }
}

extension EmployeeQueryWhereDistinct
    on QueryBuilder<Employee, Employee, QDistinct> {
  QueryBuilder<Employee, Employee, QDistinct>
      distinctByAdministrativeLocationDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('administrativeLocationDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct>
      distinctByAdministrativeLocationID({bool caseSensitive = true}) {
    return addDistinctByInternal('administrativeLocationID',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByCompanyDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('companyDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByCostCenter(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('costCenter', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByDepartmentDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('departmentDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByDepartmentID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('departmentID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByDisplayName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('displayName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('email', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByEmployeeID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('employeeID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByExemptIndicator(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('exemptIndicator',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct>
      distinctByExemptIndicatorDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('exemptIndicatorDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByExternalCompanyID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('externalCompanyID',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('firstName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByHrSystemID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('hrSystemID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByJobTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('jobTitle', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('lastName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByMobilePhone(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('mobilePhone', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByOfficeLocation(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('officeLocation',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByOrganizationalUnit(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('organizationalUnit',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct>
      distinctByOrganizationalUnitDescription({bool caseSensitive = true}) {
    return addDistinctByInternal('organizationalUnitDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByOutOfOffice() {
    return addDistinctByInternal('outOfOffice');
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByOutOfOfficeType(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('outOfOfficeType',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByPhotoUrl(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('photoUrl', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByRegionDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('regionDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByRegionID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('regionID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByRoomNumber(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('roomNumber', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctBySupervisorEmail(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('supervisorEmail',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctBySupervisorID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('supervisorID', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctBySupervisorJobTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('supervisorJobTitle',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctBySupervisorName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('supervisorName',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctBySupervisorPhotoURL(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('supervisorPhotoURL',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByWorkLocationDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('workLocationDescription',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByWorkLocationID(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('workLocationID',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByWorkPhone(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('workPhone', caseSensitive: caseSensitive);
  }
}

extension EmployeeQueryProperty
    on QueryBuilder<Employee, Employee, QQueryProperty> {
  QueryBuilder<Employee, String?, QQueryOperations>
      administrativeLocationDescriptionProperty() {
    return addPropertyNameInternal('administrativeLocationDescription');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      administrativeLocationIDProperty() {
    return addPropertyNameInternal('administrativeLocationID');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      companyDescriptionProperty() {
    return addPropertyNameInternal('companyDescription');
  }

  QueryBuilder<Employee, String?, QQueryOperations> costCenterProperty() {
    return addPropertyNameInternal('costCenter');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      departmentDescriptionProperty() {
    return addPropertyNameInternal('departmentDescription');
  }

  QueryBuilder<Employee, String?, QQueryOperations> departmentIDProperty() {
    return addPropertyNameInternal('departmentID');
  }

  QueryBuilder<Employee, String?, QQueryOperations> displayNameProperty() {
    return addPropertyNameInternal('displayName');
  }

  QueryBuilder<Employee, String?, QQueryOperations> emailProperty() {
    return addPropertyNameInternal('email');
  }

  QueryBuilder<Employee, String, QQueryOperations> employeeIDProperty() {
    return addPropertyNameInternal('employeeID');
  }

  QueryBuilder<Employee, String?, QQueryOperations> exemptIndicatorProperty() {
    return addPropertyNameInternal('exemptIndicator');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      exemptIndicatorDescriptionProperty() {
    return addPropertyNameInternal('exemptIndicatorDescription');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      externalCompanyIDProperty() {
    return addPropertyNameInternal('externalCompanyID');
  }

  QueryBuilder<Employee, String?, QQueryOperations> firstNameProperty() {
    return addPropertyNameInternal('firstName');
  }

  QueryBuilder<Employee, String?, QQueryOperations> hrSystemIDProperty() {
    return addPropertyNameInternal('hrSystemID');
  }

  QueryBuilder<Employee, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Employee, String?, QQueryOperations> jobTitleProperty() {
    return addPropertyNameInternal('jobTitle');
  }

  QueryBuilder<Employee, String?, QQueryOperations> lastNameProperty() {
    return addPropertyNameInternal('lastName');
  }

  QueryBuilder<Employee, String?, QQueryOperations> mobilePhoneProperty() {
    return addPropertyNameInternal('mobilePhone');
  }

  QueryBuilder<Employee, String?, QQueryOperations> officeLocationProperty() {
    return addPropertyNameInternal('officeLocation');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      organizationalUnitProperty() {
    return addPropertyNameInternal('organizationalUnit');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      organizationalUnitDescriptionProperty() {
    return addPropertyNameInternal('organizationalUnitDescription');
  }

  QueryBuilder<Employee, bool, QQueryOperations> outOfOfficeProperty() {
    return addPropertyNameInternal('outOfOffice');
  }

  QueryBuilder<Employee, String?, QQueryOperations> outOfOfficeTypeProperty() {
    return addPropertyNameInternal('outOfOfficeType');
  }

  QueryBuilder<Employee, String?, QQueryOperations> photoUrlProperty() {
    return addPropertyNameInternal('photoUrl');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      regionDescriptionProperty() {
    return addPropertyNameInternal('regionDescription');
  }

  QueryBuilder<Employee, String?, QQueryOperations> regionIDProperty() {
    return addPropertyNameInternal('regionID');
  }

  QueryBuilder<Employee, String?, QQueryOperations> roomNumberProperty() {
    return addPropertyNameInternal('roomNumber');
  }

  QueryBuilder<Employee, String?, QQueryOperations> supervisorEmailProperty() {
    return addPropertyNameInternal('supervisorEmail');
  }

  QueryBuilder<Employee, String?, QQueryOperations> supervisorIDProperty() {
    return addPropertyNameInternal('supervisorID');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      supervisorJobTitleProperty() {
    return addPropertyNameInternal('supervisorJobTitle');
  }

  QueryBuilder<Employee, String?, QQueryOperations> supervisorNameProperty() {
    return addPropertyNameInternal('supervisorName');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      supervisorPhotoURLProperty() {
    return addPropertyNameInternal('supervisorPhotoURL');
  }

  QueryBuilder<Employee, String?, QQueryOperations>
      workLocationDescriptionProperty() {
    return addPropertyNameInternal('workLocationDescription');
  }

  QueryBuilder<Employee, String?, QQueryOperations> workLocationIDProperty() {
    return addPropertyNameInternal('workLocationID');
  }

  QueryBuilder<Employee, String?, QQueryOperations> workPhoneProperty() {
    return addPropertyNameInternal('workPhone');
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      employeeID: json['employeeID'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      displayName: json['displayName'] as String?,
      jobTitle: json['jobTitle'] as String?,
      photoUrl: json['photoUrl'] as String?,
      email: json['email'] as String?,
      companyDescription: json['companyDescription'] as String?,
      supervisorID: json['supervisorID'] as String?,
      supervisorName: json['supervisorName'] as String?,
      supervisorEmail: json['supervisorEmail'] as String?,
      supervisorPhotoURL: json['supervisorPhotoURL'] as String?,
      supervisorJobTitle: json['supervisorJobTitle'] as String?,
      workPhone: json['workPhone'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
      administrativeLocationID: json['administrativeLocationID'] as String?,
      administrativeLocationDescription:
          json['administrativeLocationDescription'] as String?,
      regionID: json['regionID'] as String?,
      regionDescription: json['regionDescription'] as String?,
      officeLocation: json['officeLocation'] as String?,
      roomNumber: json['roomNumber'] as String?,
      departmentID: json['departmentID'] as String?,
      departmentDescription: json['departmentDescription'] as String?,
      organizationalUnit: json['organizationalUnit'] as String?,
      organizationalUnitDescription:
          json['organizationalUnitDescription'] as String?,
      costCenter: json['costCenter'] as String?,
      workLocationID: json['workLocationID'] as String?,
      workLocationDescription: json['workLocationDescription'] as String?,
      subordinates: (json['subordinates'] as List<dynamic>?)
          ?.map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalCompanyID: json['externalCompanyID'] as String?,
      outOfOffice: json['outOfOffice'] as bool? ?? false,
      hrSystemID: json['hrSystemID'] as String?,
      exemptIndicator: json['exemptIndicator'] as String?,
      exemptIndicatorDescription: json['exemptIndicatorDescription'] as String?,
    )
      ..id = (json['id'] as num?)?.toInt()
      ..outOfOfficeType = json['outOfOfficeType'] as String?;

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'id': instance.id,
      'employeeID': instance.employeeID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'displayName': instance.displayName,
      'jobTitle': instance.jobTitle,
      'photoUrl': instance.photoUrl,
      'email': instance.email,
      'companyDescription': instance.companyDescription,
      'supervisorID': instance.supervisorID,
      'supervisorName': instance.supervisorName,
      'supervisorEmail': instance.supervisorEmail,
      'supervisorPhotoURL': instance.supervisorPhotoURL,
      'supervisorJobTitle': instance.supervisorJobTitle,
      'workPhone': instance.workPhone,
      'mobilePhone': instance.mobilePhone,
      'outOfOffice': instance.outOfOffice,
      'administrativeLocationID': instance.administrativeLocationID,
      'administrativeLocationDescription':
          instance.administrativeLocationDescription,
      'regionID': instance.regionID,
      'regionDescription': instance.regionDescription,
      'officeLocation': instance.officeLocation,
      'roomNumber': instance.roomNumber,
      'departmentID': instance.departmentID,
      'departmentDescription': instance.departmentDescription,
      'organizationalUnit': instance.organizationalUnit,
      'organizationalUnitDescription': instance.organizationalUnitDescription,
      'costCenter': instance.costCenter,
      'workLocationID': instance.workLocationID,
      'workLocationDescription': instance.workLocationDescription,
      'externalCompanyID': instance.externalCompanyID,
      'subordinates': instance.subordinates,
      'outOfOfficeType': instance.outOfOfficeType,
      'hrSystemID': instance.hrSystemID,
      'exemptIndicator': instance.exemptIndicator,
      'exemptIndicatorDescription': instance.exemptIndicatorDescription,
    };
