import 'package:flutter/material.dart';

class LotData {
  final String id;
  final String location;
  Map<String, double> elements;
  int selectedBags;
  bool isExpanded;

  LotData({
    required this.id,
    required this.location,
    required this.elements,
    this.selectedBags = 0,
    this.isExpanded = false,
  });

  void updateAssayValues(Map<String, double> newValues) {
    elements.clear();
    elements.addAll(newValues);
  }
}

// Sample data for testing
final List<LotData> sampleLots = [
  LotData(
    id: 'LOT-001',
    location: 'Morenci',
    elements: {
      'Mo': 45.00,
      'Fe': 4.20,
      'Cu': 3.50,
      'Pb': 0.15,
      'Sn': 0.01,
      'Al': 0.60,
      'Cl': 0.12,
      'K': 0.15,
    },
  ),
  LotData(
    id: 'LOT-002',
    location: 'Safford',
    elements: {
      'Mo': 58.00,
      'Fe': 1.30,
      'Cu': 2.20,
      'Pb': 0.00,
      'Sn': 0.00,
      'Al': 0.10,
      'Cl': 0.00,
      'K': 0.00,
    },
  ),
  LotData(
    id: 'LOT-003',
    location: 'Sierrita',
    elements: {
      'Mo': 82.20,
      'Fe': 2.40,
      'Cu': 2.50,
      'Pb': 0.10,
      'Sn': 0.00,
      'Al': 0.10,
      'Cl': 0.00,
      'K': 0.10,
    },
  ),
];
