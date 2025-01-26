import 'package:flutter/material.dart';
import 'fmi_image_slot_size.dart';
import 'fmi_image_slot_source.dart';
import '../../../designTokens/fmi_theme_base.dart';

@Deprecated('Deprecated - Replace with OOB Components to be removed in the next 30 days')
class FMIImageSlot extends StatefulWidget {
  const FMIImageSlot(
      {Key? key, required this.source, this.size = FMIImageSlotSize.medium})
      : super(key: key);

  final FMIImageSlotSource source;
  final FMIImageSlotSize size;

  @override
  State<FMIImageSlot> createState() => _FMIImageSlot();
}

class _FMIImageSlot extends State<FMIImageSlot> {
  @override
  Widget build(BuildContext context) {
    widget.source.height = getSize();
    widget.source.width = getSize();
    widget.source.borderRadius = getBorderRadius();

    return widget.source.getWidget();
  }

  double getSize() {
    double size;

    switch (widget.size) {
      case FMIImageSlotSize.small:
        {
          size = FMIThemeBase.baseImageCircleSmall;
          break;
        }
      case FMIImageSlotSize.medium:
        {
          size = FMIThemeBase.baseImageCircleMedium;
          break;
        }
      case FMIImageSlotSize.large:
        {
          size = FMIThemeBase.baseImageCircleLarge;
          break;
        }
      case FMIImageSlotSize.extraLarge:
        {
          size = FMIThemeBase.baseImageCircleXLarge;
          break;
        }
      default:
        {
          size = FMIThemeBase.baseImageCircleMedium;
          break;
        }
    }

    return size;
  }

  double getBorderRadius() {
    double borderRadius;

    switch (widget.size) {
      case FMIImageSlotSize.small:
        {
          borderRadius = FMIThemeBase.baseBorderRadiusXSmall;
          break;
        }
      case FMIImageSlotSize.medium:
        {
          borderRadius = FMIThemeBase.baseBorderRadiusSmall;
          break;
        }
      case FMIImageSlotSize.large:
        {
          borderRadius = FMIThemeBase.baseBorderRadiusSmall;
          break;
        }
      case FMIImageSlotSize.extraLarge:
        {
          borderRadius = FMIThemeBase.baseBorderRadiusMedium;
          break;
        }
      default:
        {
          borderRadius = FMIThemeBase.baseBorderRadiusSmall;
          break;
        }
    }

    return borderRadius;
  }
}
