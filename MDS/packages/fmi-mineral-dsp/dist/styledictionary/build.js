const StyleDictionary = require('style-dictionary');

console.log('Build started...');
console.log('\n==============================================');

// ********************************************************
// Helper Functions
// ********************************************************

function isType(token, type) {
  return token.original.type === type;
}

function numToDouble(value) {
  if (value.toString().includes(".")) {
    return value;
  }
  return `${value}.0`
}

function hexColorToHex8Flutter(hexColor) {
  let hex;
  if (hexColor.toString().charAt(0) === '#') {
    hex = hexColor.toString().substr(1);
  }
  if (hex.length === 8) {
    let hex6 = hex.substring(0, 6);
    let alpha = hex.substring(6);

    return `Color(0x${alpha}${hex6})`;
  }
  return `Color(0xFF${hex})`;
}

function namedDecorationToTextDecorationFlutter(value) {
  switch (value.toString().toLowerCase()) {
    case "none":
      return "TextDecoration.none";
    case "strikethrough":
      return "TextDecoration.lineThrough";
    case "overline":
      return "TextDecoration.overline";
    case "underline":
      return "TextDecoration.underline";
    default:
      return "TextDecoration.none";
  }
}

// Apple's SF Pro Font has special font weight mapping for ultra light and light that does not correspond to normal font weight mapping.  If the font is changed, need to review weight mapping.
function namedWeightToFontWeightFlutter(value) {
  switch (value.toString().toLowerCase()) {
    case "extra-light":
    case "extralight":
    case "ultralight":
    case "100":
      return "FontWeight.w100";
    case "thin":
    case "200":
      return "FontWeight.w200";
    case 'light':
    case "300":
      return "FontWeight.w300";
    case 'normal':
    case 'regular':
    case 'plain':
    case "400":
      return "FontWeight.w400";
    case 'medium':
    case "500":
      return "FontWeight.w500";
    case 'semi-bold':
    case 'semibold':
    case '600':
      return "FontWeight.w600";
    case 'bold':
    case '700':
      return "FontWeight.w700";
    case 'extra-bold':
    case 'extrabold':
    case 'heavy':
    case '800':
      return "FontWeight.w800";
    case 'black':
    case '900':
      return "FontWeight.w900";
    default:
      return "FontWeight.w400"; // Normal
  }
}

function capitalizeFirstLetter(word) {
  return word.charAt(0).toUpperCase().concat(word.slice(1));
}

function isKebabCase(stringValue) {
  return stringValue.includes("-");
}

function kebabCaseToArrayOfWords(stringValue) {
  return stringValue.split("-");
}

// ********************************************************
// REGISTER CUSTOM TRANFORMS
// ********************************************************

StyleDictionary.registerTransform({
  name: 'name/path/camel',
  type: 'name',
  transitive: false,
  transformer: (token, options) => {
    var nameWordArray = [];
    var tokenName = "";
    nameWordArray.push(options.prefix.trim());
    if (isType(token, "borderRadius") || isType(token, "borderWidth")) {
      nameWordArray.push(token.original.type.toString().trim());
    }
    token.path.forEach(node => {
      isKebabCase(node) ? nameWordArray = nameWordArray.concat(kebabCaseToArrayOfWords(node.trim())) : nameWordArray.push(node.trim());
    });
    nameWordArray.forEach(word => {
      tokenName = tokenName.concat(capitalizeFirstLetter(word).trim());
    });
    tokenName = tokenName.charAt(0).toLowerCase().concat(tokenName.slice(1).trim());
    return tokenName;
  }
});

StyleDictionary.registerTransform({
  name: 'color/hex8flutter',
  type: 'value',
  matcher: (token) => {
    return isType(token, "color");
  },
  transformer: (token) => {
    return hexColorToHex8Flutter(token.original.value);
  },
});

StyleDictionary.registerTransform({
  name: 'fontFamily/literal',
  type: 'value',
  transitive: false,
  matcher: (token) => {
    if (token.path.includes("fontFamily")) {
      return true;
    }
    return isType(token, "fontFamilies");
  },
  transformer: (token) => {
    return `"${token.original.value}"`;
  }
});

StyleDictionary.registerTransform({
  name: 'fontWeight/flutter/FontWeight',
  type: 'value',
  transitive: false,
  matcher: (token) => {
    return isType(token, "fontWeights") || isType(token, "fontWeight");
  },
  transformer: (token) => {
    return namedWeightToFontWeightFlutter(token.original.value);
  }
});

StyleDictionary.registerTransform({
  name: 'textDecoration/flutter/TextDecoration',
  type: 'value',
  transitive: false,
  matcher: (token) => {
    return isType(token, "textDecoration");
  },
  transformer: (token) => {
    return namedDecorationToTextDecorationFlutter(token.original.value);
  },
});

StyleDictionary.registerTransform({
  name: 'textCase/literal',
  type: 'value',
  transitive: false,
  matcher: (token) => {
    return isType(token, "textCase");
  },
  transformer: (token) => {
    return `"${token.original.value}"`;
  },
});

StyleDictionary.registerTransform({
  name: 'number/double',
  type: 'value',
  transitive: false,
  matcher: (token) => {
    if (token.path.includes("fontSize")) {
      return true;
    }
    if (token.path.includes("lineHeight")) {
      return true;
    }
    if (token.path.includes("letterSpacing")) {
      return true;
    }
    if (token.path.includes("paragraphSpacing")) {
      return true;
    }
    return isType(token, "spacing") || isType(token, "sizing") || isType(token, "borderWidth") || isType(token, "borderRadius") || isType(token, "opacity") || isType(token, 'lineHeights') || isType(token, "fontSizes") || isType(token, "letterSpacing") || isType(token, "paragraphSpacing");
  },
  transformer: (token) => {
    let numValue = token.original.value;
    if (token.original.value.toString().includes("px")) {
      let labelIdx = token.original.value.toString().indexOf("px");
      numValue = token.original.value.toString().substring(0, labelIdx);
    }
    if (token.original.value.toString().includes("rem")) {
      let labelIdx = token.original.value.toString().indexOf("rem");
      numValue = token.original.value.toString().substring(0, labelIdx);
      numValue = numValue * 16;
    }
    if (token.original.value.toString().includes("%")) {
      let labelIdx = token.original.value.toString().indexOf("%");
      numValue = token.original.value.toString().substring(0, labelIdx);
      numValue = numValue / 100;
    }
    if (isNaN(numValue)) {
      return `"${numValue}"`;
    }
    return numToDouble(numValue);
  }
});

StyleDictionary.registerTransform({
  name: 'boxShadow/type',
  type: 'value',
  transitive: false,
  matcher: (token) => {
    return isType(token, "type");
  },
  transformer: (token) => {
    return `"${token.original.value}"`;
  }
});

// ********************************************************
// REGISTER CUSTOM TRANFORM GROUPS
// ********************************************************

StyleDictionary.registerTransformGroup({
  name: "mds/flutter",
  transforms: [
    'name/path/camel',
    'boxShadow/type',
    'color/hex8flutter',
    'fontFamily/literal',
    'fontWeight/flutter/FontWeight',
    'textDecoration/flutter/TextDecoration',
    'textCase/literal',
    'number/double'
  ]
});

// ********************************************************
// REGISTER CUSTOM FILTERS
// ********************************************************

StyleDictionary.registerFilter({
  name: 'removeGradients',
  matcher: (token) => {
    return !token.value.toString().toLowerCase().includes("gradient");
  }
});

StyleDictionary.registerFilter({
  name: 'filterColors',
  matcher: (token) => {
    return isType(token, "color") && !token.value.toString().toLowerCase().includes("gradient") && !token.path.includes("Palette");
  }
});

// ********************************************************
// APPLY THE CONFIGURATION
// IMPORTANT: the registration of custom transforms
// needs to be done _before_ applying the configuration
const StyleDictionaryBase = StyleDictionary.extend(__dirname + '/config-base.json');
const StyleDictionaryLight = StyleDictionary.extend(__dirname + '/config-light.json');
const StyleDictionaryDark = StyleDictionary.extend(__dirname + '/config-dark.json');

// FINALLY, BUILD ALL THE PLATFORMS
StyleDictionaryBase.buildAllPlatforms();
StyleDictionaryLight.buildAllPlatforms();
StyleDictionaryDark.buildAllPlatforms();

console.log('\n==============================================');
console.log('\nBuild completed!');
