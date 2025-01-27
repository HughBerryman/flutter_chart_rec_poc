**Usage**

The theme defines default property values for descendants of App Bar widgets. The demos display how the theming works with an app bar. No need to style title text theme or color. No need to style icon size or color.

` `

Notes:

**Approved Implementation**

- The theme text style is set for the title. If using a subtitle, apply a text style to the subtitle parameter.
  - Text theme = labelLarge
  - Color theme = onSecondaryContainer, onSurface, fmiBaseThemeAltSurfaceInverseOnAltSurface, or chartGrayscaleGray0 depending on theme.
- Set automaticallyImplyLeading = false
- Do not use leading parameter
  - Exception: Centering text - Approved for EWS Forms
- Title parameter = Leading widgets and title should be included as a row in the `title` parameter
  - If leading widget = IconButton no padding
  - If leading widget = Image right padding = basePadding4
- Actions parameter
  - Last action item right padding = basePadding8
  - If action item != IconButton, then wrap in SizedBox(width: baseContainerDimension40, height: baseContainerDimension40)
- When applying a theme, it will be necessary to wrap the theme with a PreferredSize widget. The height of the app bar is baseContainerDimension64.

**Centering - Approved for EWS Forms**

- automaticallyImplyLeading = false
- leadingWidth
  - 1 item = null (Flutter default = 56)
  - items > 1 = build the width based on content
    - basePadding8 for left padding
    - baseContainerDimension40 for image and/or icon button
    - if 2 images are side by side, then separate with basePadding4
    - example: Leading icon button + Leading image
      - basePadding8 + baseContainerDimension40 + baseContainerDimension40
    - example: Leading image + Leading image
    - basePadding8 + baseContainerDimension40 + basePadding4 + baseContainerDimension40
- leading
  - Padding -> Row -> children
    - padding left = basePadding8
    - row - this insures circular target area for icon buttons
- see approved implementation for information on theming, subtitle, and action items

` `

[App Bar Theme Flutter Documentation](https://api.flutter.dev/flutter/material/AppBarTheme-class.html)

` `
