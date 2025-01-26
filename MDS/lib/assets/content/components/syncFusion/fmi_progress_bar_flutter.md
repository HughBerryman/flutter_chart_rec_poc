**Examples**

```dart
FmiProgressBar(
  title: 'Progress Title - Positive',
  unit: 'kt',
  trackLength: 0,
  targetValue: 0,
  progressValue: 130
)
```
```dart
FmiProgressBar(
  title: 'Progress Title - Negative',
  unit: 'kt',
  trackLength: 100,
  targetValue: 50,
  progressValue: 32.9
)
```
```dart
FmiProgressBar(
  title: 'Progress Title - Mid',
  unit: 'kt',
  trackLength: 100,
  targetValue: 50,
  progressValue: 52.9
)
```
```dart
FmiProgressBar(
  title: 'Progress Title - High',
  unit: 'kt',
  trackLength: 100,
  targetValue: 75,
  progressValue: 98
)
```
```dart
FmiProgressBar(
  title: 'Progress Title - Zero',
  unit: 'kt',
  showVariance: true,
  trackLength: 200,
  progressValue: 0
)
```
```dart
FmiProgressBar(
  title: 'Progress Title - Positive & ProgressBarColorScheme.primary',
  colorScheme: ProgressBarColorScheme.primary,
  unit: 'kt',
  trackLength: 0,
  targetValue: 0,
  progressValue: 130
)
```
```dart
FmiProgressBar(
  unit: 'kt',
  showVariance: false,
  targetValue: 50,
  trackLength: 100,
  progressValue: 98
)
```
```dart     
FmiProgressBar(
  unit: 'kt',
  showVariance: false,
  targetValue: 37,
  trackLength: 74,
  progressValue: 4
)
```
```dart
FmiProgressBar(
  unit: 'kt', 
  showVariance: false,
  trackLength: 74,
  progressValue: 40
)
```
```dart
FmiProgressBar(
  unit: 'kt', 
  trackLength: 1000, 
  progressValue: 40
)
```
```dart
FmiProgressBar(
    unit: 'kt', 
    trackLength: 50, 
    progressValue: 50
)
```
```dart
FmiProgressBar(
  unit: 'kt',
  targetValue: 5000,
  trackLength: 10000,
  progressValue: 4000
)
```
```dart
FmiProgressBar(
  unit: 'kt',
  numberFormat: '####.##',
  showTargetValue: false,
  targetValue: 1084.4,
  trackLength: 1084.4,
  progressValue: 1032.1
)
```
```dart
FmiProgressBar(
  unit: 'kt',
  showTargetValue: false,
  showTargetBar: false,
  targetValue: 84.4,
  trackLength: 84.4,
  progressValue: 32.1
)
```
```dart
FmiProgressBar(
  colorScheme: ProgressBarColorScheme.primary,
  unit: 'kt',
  trackLength: 1000,
  progressValue: 40
  )
```
```dart
FmiProgressBar(
  colorScheme: ProgressBarColorScheme.primary,
  unit: 'kt',
  targetValue: 5000,
  trackLength: 10000,
  progressValue: 4000
  )
```
```dart
FmiProgressBar(
  colorScheme: ProgressBarColorScheme.primary,
  unit: 'kt',
  numberFormat: '####.##',
  showTargetValue: false,
  targetValue: 1084.4,
  trackLength: 1084.4,
  progressValue: 1032.1
  )
```
```dart
FmiProgressBar(
  colorScheme: ProgressBarColorScheme.primary,
  unit: 'kt',
  showVariance: false,
  trackLength: 74,
  progressValue: 40
  )
```
```dart
FmiProgressBar(
  unit: 'kt',
  varianceValue: -6.25,
  targetValue: 80,
  trackLength: 100,
  progressValue: 75
)
```
```dart
FmiProgressBar(
  unit: 'kt',
  varianceValue: 75,
  targetValue: 20,
  trackLength: 100,
  progressValue: 35
)
```
```dart
FmiProgressBar(
  colorScheme: ProgressBarColorScheme.primary,
  unit: 'kt',
  showVariance: false,
  showTargetValue: false,
  showTrackLength: false,
  trackLength: 100,
  progressValue: 98
)
```