import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:poc/ui/demo/demo.dart';

class DemoConnectedAssetLookup extends StatefulWidget {
  const DemoConnectedAssetLookup({Key? key}) : super(key: key);

  @override
  State<DemoConnectedAssetLookup> createState() =>
      _DemoConnectedAssetLookupState();
}

class _DemoConnectedAssetLookupState extends State<DemoConnectedAssetLookup> {
  @override
  Widget build(BuildContext context) {
    var mockScannedAsset = Asset(
        assetName: "BAG000003",
        equipmentNo: "100000700169",
        equipmentName: "543BAM13022",
        description: "#22 SHOVEL 2800XPA SHOVEL");

    var mockManualEntryAsset = Asset(
      equipmentName: "Manual Entry",
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentHeader(title: 'Fmi Connected Asset Lookup'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: FMIThemeBase.baseGapMedium),
          child: ComponentSubheader(
              title: 'Fmi Connected Asset Lookup without pre-existing values'),
        ),
        FmiConnectedAssetLookupWidget(
          onChanged: (asset) {},
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title: 'Fmi Connected Asset Lookup with error text'),
        ),
        FmiConnectedAssetLookupWidget(
          errorText: "Required, cannot be blank",
          onChanged: (asset) {},
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title:
                  'Fmi Connected Asset Lookup with pre-existing scanned values'),
        ),
        FmiConnectedAssetLookupWidget(
          fieldTitle: "Equipment Number",
          initialValue: mockScannedAsset,
          onChanged: (asset) {},
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title:
                  'Fmi Connected Asset Lookup with pre-existing manual entry values'),
        ),
        FmiConnectedAssetLookupWidget(
          fieldTitle: "Equipment Number",
          initialValue: mockManualEntryAsset,
          onChanged: (asset) {},
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title:
                  'Disabled Fmi Connected Asset Lookup with pre-existing scanned values'),
        ),
        FmiConnectedAssetLookupWidget(
          fieldTitle: "Equipment Number",
          initialValue: mockScannedAsset,
          onChanged: (asset) {},
          enabled: false,
        ),
        const Padding(
          padding: EdgeInsets.only(
              bottom: FMIThemeBase.baseGapMedium,
              top: FMIThemeBase.baseGapXLarge),
          child: ComponentSubheader(
              title:
                  'Disabled Fmi Connected Asset Lookup with pre-existing manual entry values'),
        ),
        FmiConnectedAssetLookupWidget(
          fieldTitle: "Equipment Number",
          initialValue: mockManualEntryAsset,
          onChanged: (asset) {},
          enabled: false,
        ),
      ],
    );
  }
}
