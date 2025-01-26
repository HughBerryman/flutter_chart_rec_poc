**Examples**

Row of FMI Toggle Buttons

```dart
Row(
    children: const [
        Padding(
            padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
            child: FmiToggleButton(
                text: "N/A"
            ),
        ),
        Padding(
            padding: EdgeInsets.only(right: FMIThemeBase.baseGapMedium),
            child: FmiToggleButton(
                text: "N/A",
                icon: FontAwesomeIcons.solidBan,
            ),
        ),
        FmiToggleButton(
            icon: FontAwesomeIcons.solidBan,
        ),
    ],
),
```
