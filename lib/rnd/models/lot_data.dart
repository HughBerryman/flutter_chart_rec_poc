import 'package:flutter/material.dart';

class LotData {
  final String id;
  final String location;
  final String bagInfo;
  final int totalBags;
  final Map<String, double> elements;
  final DateTime receivedDate;
  final String carrier;
  int selectedBags;
  bool isExpanded;

  LotData({
    required this.id,
    required this.location,
    required this.bagInfo,
    required this.totalBags,
    required this.elements,
    required this.receivedDate,
    required this.carrier,
    this.selectedBags = 0,
    this.isExpanded = false,
  });
}

// Sample data
final List<LotData> sampleLots = [
  LotData(
    id: 'LOT-001',
    location: 'Morenci',
    bagInfo: '150 bags in lot (4,000 lbs/bag)',
    totalBags: 150,
    selectedBags: 26,
    receivedDate: DateTime(2024, 12, 10),
    carrier: 'Knight-Swift',
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
    bagInfo: '174 bags in lot (4,000 lbs/bag)',
    totalBags: 174,
    receivedDate: DateTime(2024, 12, 15),
    carrier: 'Knight-Swift',
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
    bagInfo: '150 bags in lot (4,000 lbs/bag)',
    totalBags: 150,
    receivedDate: DateTime(2024, 12, 20),
    carrier: 'Knight-Swift',
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
