import 'package:flutter/material.dart';
import 'package:poc/enums/enums.dart';
import 'package:poc/ui/demo/buttonsDemo/fab/demo_fab_zero_elevation.dart';
import 'package:poc/ui/demo/demo.dart';

Widget getDemo(Demos? component) {
  switch (component) {
    case Demos.fmiCardHeaderListTile:
      return const DemoFmiCardHeaderListTile();
    case Demos.subtitleTwoLine:
      return const DemoSubtitleTwoLine();
    case Demos.titleWithOverline:
      return const DemoTitleWithOverline();
    case Demos.titleWithSubscript:
      return const DemoTitleWithSubscript();
    case Demos.fmiMineOverview:
      return const DemoMineOverview();
    case Demos.fmiMaterialOverview:
      return const DemoMaterialOverview();
    case Demos.fmiWarningTextField:
      return const DemoWarningTextField();
    case Demos.fmiToggleButton:
      return const DemoToggleButton();
    case Demos.fmiTimeline:
      return const DemoTimeline();
    case Demos.fmiSignatureCanvas:
      return const DemoSignatureCanvas();
    case Demos.fmiSignatureDialog:
      return const DemoSignatureDialog();
    case Demos.fmiSignatureViewer:
      return const DemoSignatureViewer();
    case Demos.fmiScorecard:
      return const DemoScorecard();
    case Demos.fmiAttachment:
      return const DemoAttachment();
    case Demos.photoAttachment:
      return const DemoPhotoAttachment();
    case Demos.fmiPhoneNumberInput:
      return const DemoPhoneNumberInput();
    case Demos.fmiMultiSelectList:
      return const DemoMultiSelectList();
    case Demos.fmiMultiInput:
      return const DemoMultiInput();
    case Demos.fmiMultiDialogIconButton:
      return const DemoMultiDialogIconButton();
    case Demos.employeeLookup:
      return const DemoEmployeeLookup();
    case Demos.fmiDialogIconButton:
      return const DemoDialogIconButton();
    case Demos.fmiConnectedAssetLookup:
      return const DemoConnectedAssetLookup();
    case Demos.conditionalQuestion:
      return const DemoConditionalQuestion();
    case Demos.radioButtonGroup:
      return const DemoRadio();
    case Demos.fmiAvatar:
      return const DemoAvatar();
    case Demos.errorCardHeader:
      return const DemoErrorHeaderCard();
    case Demos.fmiBadge:
      return const DemoBadges();
    case Demos.slidingVisibility:
      return const DemoAnimation();
    case Demos.fmiIconButton:
      return const DemoIconButton();
    case Demos.fmiMultiEmployeeLookup:
      return const DemoMultiEmployeeLookup();
    case Demos.closeableAppBar:
      return const DemoCloseableAppBar();
    case Demos.fmiKpiCard:
      return const DemoKpiCard();
    case Demos.fmiKpiGraphCard:
      return const DemoKpiGraphCard();
    case Demos.fmiMultiSelect:
      return const DemoMultiSelect();
    case Demos.fmiNavigationRail:
      return const DemoNavigationRail();
    case Demos.fmiAppBarTop:
      return const DemoAppBarTop();
    case Demos.fmiBottomNavigationBar:
      return const DemoBottomNavBar();
    case Demos.fmiExpandableKpiCard:
      return const DemoExpandableKpiCard();
    case Demos.fmiTabBar:
      return const DemoTabBar();
    case Demos.fmiNaWarningTextField:
      return const DemoNaWarningTextField();
    case Demos.fmiMultiSelectFilter:
      return const DemoMultiSelectFilter();
    case Demos.fmiSingleSelectFilter:
      return const DemoSingleSelectFilter();
    case Demos.fmiSearchSingleSelect:
      return const DemoSearchSingleSelect();
    case Demos.fmiGenericCard:
      return const DemoGenericCard();
    case Demos.fmiProgressBar:
      return const DemoProgressBar();
    case Demos.fmiHyperlink:
      return const DemoHyperlink();
    case Demos.fmiMap:
      return const DemoMap();
    case Demos.fmiLocationPicker:
      return const DemoLocationPicker();
    case Demos.fmiCandyBar:
      return const DemoCandyBar();
    case Demos.genericLookup:
      return const DemoGenericLookup();
    case Demos.colors:
      return const DemoColor();
    case Demos.typography:
      return const DemoTypography();
    case Demos.mediaGraphics:
      return const DemoFrmIllustrations();
    case Demos.spacingLayout:
      return const DemoLayout();
    case Demos.iconography:
      return const DemoIconography();
    case Demos.snackBarService:
      return const DemoSnackBarService();
    case Demos.fmiEmployeeInfoWidget:
      return const DemoEmployeeInfoWidget();
    case Demos.elevatedButton:
      return const DemoElevatedButton();
    case Demos.textButton:
      return const DemoTextButton();
    case Demos.filledButton:
      return const DemoFilledButton();
    case Demos.outlinedButton:
      return const DemoOutlinedButton();
    case Demos.dropdownButton:
      return const DemoDropdownButton();
    case Demos.fabDefault:
      return const DemoFabDefault();
    case Demos.fabPrimary:
      return const DemoFabPrimary();
    case Demos.fabSecondary:
      return const DemoFabSecondary();
    case Demos.fmiEmployeeDirectorySearch:
      return const DemoEmployeeDirectorySearch();
    case Demos.fmiOverviewBar:
      return const DemoOverviewBar();
    case Demos.bottomSheet:
      return const DemoBottomSheet();
    case Demos.fmiSearchDialog:
      return const DemoSearchDialog();
    case Demos.cardThemeDefault:
      return const DemoCardDefaultTheme();
    case Demos.cardThemeElevated:
      return const DemoCardElevatedTheme();
    case Demos.cardThemeFilled:
      return const DemoCardFilledTheme();
    case Demos.cardThemeOutline:
      return const DemoCardOutlineTheme();
    case Demos.cardThemeSecondary:
      return const DemoCardSecondaryTheme();
    case Demos.appBarThemes:
      return const DemoAppBarTheme();
    case Demos.fmiNavigationDrawer:
      return const DemoFmiNavigationDrawer();
    case Demos.datePickerDefault:
      return const DemoDatePicker();
    case Demos.timePickerDefault:
      return const DemoTimePicker();
    case Demos.fabTertiary:
      return const DemoFabTertiary();
    case Demos.fabTertiaryContainer:
      return const DemoFabTertiaryContainer();
    case Demos.fabSecondaryContainer:
      return const DemoFabSecondaryContainer();
    case Demos.fabPrimaryContainer:
      return const DemoFabPrimaryContainer();
    case Demos.fabHero:
      return const DemoFabHero();
    case Demos.fabZeroElevation:
      return const DemoFabZeroElevation();
    case Demos.genericLookupMultiSelect:
      return const DemoGenericLookupMultiSelect();
    case Demos.dateRangePickerDefault:
      return const DemoDateRangePicker();
    case Demos.dropdownButtonFormField:
      return const DemoDropdownButton();
    case Demos.fmiCarouselWidget:
      return const DemoCarousel();
    case Demos.treeview:
      return const DemoTreeView();
    case Demos.oobSegmentedButton:
      return const DemoSegmentedButton();
    case Demos.defaultBarChart:
      return const DemoSampleBarChart();
    case Demos.defaultLineChart:
      return const DemoSampleLineChart();
    case Demos.defaultPieChart:
      return const DemoSamplePieChart();
    case Demos.dataGrid:
      return const DemoDataGrid();
    case Demos.defaultBottomNavBar:
      return const DemoBottomNavigationBar();
    case Demos.textField:
      return const DemoTextField();
    case Demos.actionChips:
      return const DemoActionChips();
    case Demos.choiceChips:
      return const DemoChoiceChips();
    case Demos.filterChips:
      return const DemoFilterChips();
    case Demos.inputChips:
      return const DemoInputChips();
    case Demos.fmiAppBar:
      return const DemoAppBar();
    default:
      return Container();
  }
}
