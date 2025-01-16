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
      'Mo': 49.00,
      'Fe': 3.80,
      'Cu': 2.50,
      'Pb': 0.08,
      'As': 0.03,
      'Insol': 4.50,
      'Oil': 3.20,
      'H2O': 6.50,
    },
  ),
  LotData(
    id: 'LOT-002',
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
  ),
  LotData(
    id: 'LOT-003',
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
  ),
];
