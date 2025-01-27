`  `

#### Typography Implementation

The type scale of a font inside MDS is defined inside of a theme and for FMI themes, they are often located inside the fmi-core package.

`  `

#### Implementing a Text Style using TextTheme

When looking to add styling for a text, utilize the TextTheme attribute of ThemeData to look through the available options for type scale.
To obtain the current text theme, call Theme.of with the current BuildContext and read the ThemeData.textTheme property.

For example, to apply a TextTheme to a Text widget, use the style parameter in the following

```dart
Text('Title', style: Theme.of(context).textTheme.titleLarge)
```

`  `

Next, I want to replace the current color options, you can extend the theme using copyWith()

```dart
Text('Title', style: Theme.of(context).textTheme.titleLarge
    ?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer))
```

`  `

Applying FontWeight tokens to the TextTheme

```dart
Text('Sample Text', style: Theme.of(context).textTheme.bodyLarge
    ?.copyWith(fontWeight: 
    FMIThemeBase.baseFontWeightsBold))
```

`  `


