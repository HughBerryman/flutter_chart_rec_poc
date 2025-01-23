import 'package:flutter/material.dart';

class MdsWidgets extends StatefulWidget {
  const MdsWidgets({super.key});

  @override
  State<MdsWidgets> createState() => _MdsWidgetsState();
}

class _MdsWidgetsState extends State<MdsWidgets> {
  bool _switchValue = false;
  double _sliderValue = 0.5;
  String _selectedOption = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MDS Widgets Example"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Basic Controls",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Text("Toggle Switch:"),
                        const Spacer(),
                        Switch(
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() => _switchValue = value);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text("Slider Control:"),
                    Slider(
                      value: _sliderValue,
                      onChanged: (value) {
                        setState(() => _sliderValue = value);
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButton<String>(
                      value: _selectedOption,
                      isExpanded: true,
                      items: ["Option 1", "Option 2", "Option 3"]
                          .map((String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ))
                          .toList(),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() => _selectedOption = newValue);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Data Display",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text("Current Settings"),
                      subtitle: Text(
                        "Switch: $_switchValue\nSlider: ${(_sliderValue * 100).toStringAsFixed(0)}%\nSelected: $_selectedOption",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Action performed!"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text("Perform Action"),
            ),
          ],
        ),
      ),
    );
  }
}
