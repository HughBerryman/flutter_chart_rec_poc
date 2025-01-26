**Examples**

```dart
SlidingVisibilityWidget(
    child: PreferredSize(
        preferredSize: const Size.fromHeight(FMIThemeBase.baseContainerDimension100),
        TextButton(
            child: isVisible
                ? Text(
                    'Click to go down',
                )
                : Text(
                    'Click to go up',
                ),
            onPressed: () {
                setState(() {
                    isVisible = !isVisible;
                });
            },
        ),
    ),
    visible: isVisible,
    slidingVisibilityDirection: SlidingVisibilityDirection.down,
),
```
