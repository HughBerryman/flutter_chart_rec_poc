##### Examples

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding:
        const EdgeInsets.only(top: FMIThemeBase.basePaddingLarge),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: enabled,
            onChanged: (bool? value) {
              setState(() {
                enabled = value!;
              });
            },
          ),
          const Text("Enabled")
        ],
      ),
    ),
    FmiSignatureCanvas(
      enabled: enabled,
      context: context,
      canvasHeight: 300,
      onSignatureChanged: (updatedPoints) async {
        png = await SignatureHelper.getPng(updatedPoints);
        setState(() {
          points = points;
        });
      },
    ),
    if (png != null) ...[
      const Padding(
        padding: EdgeInsets.only(
          top: FMIThemeBase.basePaddingLarge,
          bottom: FMIThemeBase.basePaddingLarge),
        child: ComponentSubheader(title: "PNG Output"),
      ),
      Image.memory(png!)
    ],
    if (points != null && points!.isNotEmpty) ...[
      const Padding(
        padding: EdgeInsets.only(
          top: FMIThemeBase.basePaddingLarge,
          bottom: FMIThemeBase.basePaddingLarge),
        child: ComponentSubheader(title: "Points Output"),
      ),
      ElevatedButton(
        child: const Text("Show Points"),
        onPressed: () => showDialog(
          context: context,
          builder: (_) => ConfirmationDialog(
            title: "Signature Points",
            message: points!
              .map((point) => getPointsText(point))
              .toList()
              .join("\n"),
          )
        )
      )
    ]
  ],
),
```

