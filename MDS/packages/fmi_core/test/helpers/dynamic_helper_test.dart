import 'package:flutter_test/flutter_test.dart';
import 'package:fmi_core/helpers/dynamic_helper.dart';

void main() {
  final List<Map<String, dynamic>> mockLookupResponse =
  [{
    "lookupCode": "OPERATION_MASTER_CCC",
    "data": {
      "processes": [{
        "processID": "HSF",
        "name": "Health & Safety",
        "sites": [{
          "siteID": "PFI",
          "siteProcessID": "PFI-HSF",
          "name": "PTFI"
        }]
      }, {
        "processID": "MO",
        "name": "Mine Operations *EN*",
        "languages": [{
          "langkey": "ES",
          "name": "Operaciones Mina"
        }],
        "sites": [{
          "siteID": "PFI",
          "siteProcessID": "PFI-MO",
          "name": "PTFI"
        }]
      }]
    }
  }];
  
  group('getNote', () {
    test('should be able correctly locate a node among a list', () {
      expect(DynamicHelper.getNode(mockLookupResponse, "processID"), "HSF");
    });

    test('should be able correctly navigate a nested object', () {
      expect(DynamicHelper.getNode(mockLookupResponse, "siteProcessID"), "PFI-HSF");
    });

    test('should return the most shallow key if multiple of the same key exist', () {
      expect(DynamicHelper.getNode(mockLookupResponse, "name"), "Health & Safety");
    });
  });
}