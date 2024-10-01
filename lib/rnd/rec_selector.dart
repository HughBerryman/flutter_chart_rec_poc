import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rec Selector UI'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // This will navigate back to the previous screen
          },
        ),
      ),
      body: Container(
        width: 300,
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFE2E2E5)),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Accept',
                        style: TextStyle(
                          color: Color(0xFF002111),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4), // Add some space between the texts
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Recommendation',
                          style: TextStyle(
                            color: Color(0xFF002111),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            height: 0.13,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 125,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '2000',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF002111),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                          letterSpacing: 0.10,
                        ),
                      ),
                      Text(
                        'gal/shift',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF002111),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDBF2E0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const Icon(Icons.check, size: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
