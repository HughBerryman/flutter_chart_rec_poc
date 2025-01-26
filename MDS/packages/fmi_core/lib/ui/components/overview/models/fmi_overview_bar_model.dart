import 'package:fmi_core/fmi_core.dart';

class FmiOverviewBarModel {
  FmiOverviewBarModel({
    this.height = FMIThemeBase.baseContainerHeightSmall,
    this.chartTitle,
    this.chartTarget = double.maxFinite,
    this.chartValue,
    this.metric,
    this.chartMaxValue,
    this.chartSubtitle,
    this.chartSubtext,
    this.avatarImg,
    this.avatarDisplayName,
    this.chartTargetLabel,
  });
  double? height;
  String? chartTitle;
  String? metric;
  double? chartTarget;
  double? chartValue;
  double? chartMaxValue;
  String? chartSubtitle;
  String? chartSubtext;
  String? avatarImg;
  String? avatarDisplayName;
  String? chartTargetLabel;
}
