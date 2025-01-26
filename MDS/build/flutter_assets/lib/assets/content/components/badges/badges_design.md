**Usage**

A badge is often used to display conveniently bit sized details. If icons are used, the Fmi Badge only supports FontAwesome iconography.

` `

**Alternatives**

- Flutter Badge Widget

` `

**Parameters**

- size – BadgeSize, optional, default BadgeSize.small, BadgeSize.small is deprecated and will be removed. BadgeSize.regular will be set as the new default when BadgeSize.small is removed.
- backgroundColor – BadgeColor, optional, default BadgeColor.primary
- alignment – AlignmentPosition, optional, default AlignmentPosition.topRight
- child – Widget, optional
- onTap – Function(), optional
- icon – IconData, optional
- text – String, optional
- offset - Offset, optional, Note: This value is only used if either icon or text is not null.

` `

BadgeSize Uses:

- **BadgeSize.small** This size will be deprecated in future version. Please use BadgeSize.regular.
- Use **BadgeSize.regular** extends horizontal based on content, height remains unchanged, icon is sized to FMIThemeBase.baseIconXSmall, intended use for more elongated appearance.
- Use **BadgeSize.medium** min height/width = FMIThemeBase.baseIconMedium, icon is sized to FMIThemeBase.baseIconSmall, intended use for more circular appearance.

` `

**Models**

enum BadgeSize

- small - Deprecated. Please use BadgeSize.regular.
- regular
- medium

` `

enum AlignmentPosition

- topLeft
- topRight
- bottomLeft
- bottomRight
- center

` `

enum BadgeColor

Base colors:

- primary
- primaryContainer
- secondary
- tertiary
- success
- warning
- danger
- inverseAltSurface
- altSurface
- surfaceVariant
- secondaryContainer
- surface

Extended colors:

- illustrationOnBackgroundRed
- illustrationOnBackgroundDarkOrange
- illustrationOnBackgroundOrange
- illustrationOnBackgroundAmber
- illustrationOnBackgroundGreen
- illustrationOnBackgroundLime
- illustrationOnBackgroundBlue
- illustrationOnBackgroundTeal
- illustrationOnBackgroundDarkBlue
- illustrationOnBackgroundBlueGray
- illustrationOnBackgroundPurple
- illustrationOnBackgroundIndigo
- illustrationOnBackgroundDarkPurple
- illustrationOnBackgroundLavender
- illustrationOnBackgroundPink
- illustrationOnBackgroundCopper

` `
