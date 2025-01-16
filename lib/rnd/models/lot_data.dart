import 'package:flutter/material.dart';

class LotData {
  final String id;
  final String location;
  Map<String, double> elements;
  int selectedBags;
  bool isExpanded;
  String barcodePrefix;
  final int lbsPerBag;

  LotData({
    required this.id,
    required this.location,
    required this.elements,
    this.selectedBags = 0,
    this.isExpanded = false,
    String? barcodePrefix,
    required this.lbsPerBag,
  }) : barcodePrefix = barcodePrefix ?? id;

  void updateAssayValues(Map<String, double> newValues) {
    elements.clear();
    elements.addAll(newValues);
  }

  String getBarcodeRange() {
    if (selectedBags == 0) return 'No bags selected';
    final start = '$barcodePrefix-${1.toString().padLeft(3, '0')}';
    final end = '$barcodePrefix-${selectedBags.toString().padLeft(3, '0')}';
    return '$start to $end';
  }
}

// Sample data for testing
final List<LotData> sampleLots = [
  LotData(
    id: 'LOT-001',
    location: 'Morenci',
    elements: {
      'Mo': 45.00,
      'Fe': 4.50,
      'Cu': 3.50,
      'Pb': 0.15,
      'As': 0.08,
      'Insol': 5.50,
      'Oil': 5.20,
      'H2O': 8.50,
    },
    barcodePrefix: 'MOR001',
    lbsPerBag: 4000,
  ),
  LotData(
    id: 'LOT-002',
    location: 'Cerro Verde',
    elements: {
      'Mo': 52.00,
      'Fe': 2.30,
      'Cu': 1.80,
      'Pb': 0.05,
      'As': 0.02,
      'Insol': 3.80,
      'Oil': 2.90,
      'H2O': 5.50,
    },
    barcodePrefix: 'CER002',
    lbsPerBag: 1500,
  ),
  LotData(
    id: 'LOT-003',
    location: 'Safford',
    elements: {
      'Mo': 52.00,
      'Fe': 2.30,
      'Cu': 1.80,
      'Pb': 0.05,
      'As': 0.02,
      'Insol': 3.80,
      'Oil': 2.90,
      'H2O': 5.50,
    },
    barcodePrefix: 'SAF003',
    lbsPerBag: 4000,
  ),
  LotData(
    id: 'LOT-004',
    location: 'Sierrita',
    elements: {
      'Mo': 55.20,
      'Fe': 2.90,
      'Cu': 2.20,
      'Pb': 0.07,
      'As': 0.04,
      'Insol': 4.20,
      'Oil': 3.80,
      'H2O': 7.20,
    },
    barcodePrefix: 'SIE004',
    lbsPerBag: 4000,
  ),
];
