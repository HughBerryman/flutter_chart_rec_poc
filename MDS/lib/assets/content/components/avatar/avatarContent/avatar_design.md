### Fmi Avatar

**Usage**

The avatar component is utilized often in List Tiles where it takes an avatar property.

Avatar widget should be placed left indented (left side) where the List Tile starts.

Display name is shown fully via tooltip and cutoff depending on the length. If wanting to use two line, a parameter supports it (splitTwoLine: true).

Badges are supported and can be added in via parameter (showBadge: true) and modified respectively shown in the following code snippet.

Note: Small size avatar is is recommended for chip use only and only renders the avatar. No other parameters are supported on this variant.

**Alternatives**

- CircleAvatar widget

**Parameters**

- displayName - String, required
- url - String?, optional
- onSelectedChanged - Function(bool isSelected)?, optional
- initialIsSelected - bool, optional default false
- avatarSize - FmiAvatarSize, optional default FmiAvatarSize.extraLarge
- disabled - bool, optional default false
- includeLabel - bool, optional default false
- selectedBehaviorOff - bool?, optional default false
- splitTwoLine - bool?, optional default false
- badgeIcon - IconData?, optinal **Note:** (Supports only FontAwesomeIcons)
- badgeIconColor - Color?, optional default onPrimary
- badgeBackgroundColor - Color?, optional default primary
- showBadge - bool?, optional default false
- badgePosition - AlignmentPosition?, optional default AlignmentPosition.bottomRight
- useCircleShape - bool, optional default true
- showBadgeBorder - bool, optional default true

**Models**

AlignmentPosition (Enum):

- bottomLeft
- bottomRight
- center
- topLeft
- topRight

` `

FmiAvatarSize (Enum):

- small
- medium
- regular
- large
- extraLarge

`  `
