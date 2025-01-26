### Fmi Candy Bar

##### Usage

The Candy Bar is a widget to show horizontal bar with custom background and foreground colors.

##### Parameters

* List<FmiCandyBarItem> items;

CandyBarItem
* IconData? icon;
* Color? iconColor;
* FmiCandyBarType type;
* Color? backgroundColor;
* String? title;
* Color? titleColor;
* String description;
* Color? descriptionColor;
* String buttonText;
* Color? buttonTextColor;
* Function()? onTap;
* Function()? onRemove;

CandyBarType:
* success
* warning
* error