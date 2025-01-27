import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoIconography extends StatelessWidget {
  const DemoIconography({super.key});

  @override
  Widget build(BuildContext context) {
    Widget getContainer(IconData icon, String iconName) {
      return Tooltip(
        message: iconName,
        child: Container(
          width: FMIThemeBase.baseContainerDimension48,
          height: FMIThemeBase.baseContainerDimension48,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius:
                BorderRadius.circular(FMIThemeBase.baseBorderRadiusMedium),
          ),
          child: Center(
            child: FaIcon(
              icon,
              size: FMIThemeBase.baseIconMedium,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('FmiIcons',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface)),
        Padding(
          padding: const EdgeInsets.only(
              top: FMIThemeBase.basePadding1,
              bottom: FMIThemeBase.basePadding4),
          child: Text(
            'Examples with Container(baseContainerDimension48) and FaIcon(baseIconMedium)',
            style: Theme.of(context).textTheme.bodyLarge,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Wrap(
            spacing: FMIThemeBase.basePadding5,
            runSpacing: FMIThemeBase.basePadding5,
            children: [
              getContainer(FmiIcons.addressbook, 'FmiIcons.addressbook'),
              getContainer(
                  FmiIcons.aribasourcinglegacy, 'FmiIcons.aribasourcinglegacy'),
              getContainer(FmiIcons.aribasourcinglegacythin,
                  'FmiIcons.aribasourcinglegacythin'),
              getContainer(FmiIcons.arrowprogress, 'FmiIcons.arrowprogress'),
              getContainer(
                  FmiIcons.arrowsdowntopeople, 'FmiIcons.arrowsdowntopeople'),
              getContainer(FmiIcons.arrowuprightfromsquare,
                  'FmiIcons.arrowuprightfromsquare'),
              getContainer(FmiIcons.authorizationforexpenditure,
                  'FmiIcons.authorizationforexpenditure'),
              getContainer(FmiIcons.award, 'FmiIcons.award'),
              getContainer(FmiIcons.azure, 'FmiIcons.azure'),
              getContainer(FmiIcons.azuresolid, 'FmiIcons.azuresolid'),
              getContainer(FmiIcons.ballotcheck, 'FmiIcons.ballotcheck'),
              getContainer(FmiIcons.bolt, 'FmiIcons.bolt'),
              getContainer(FmiIcons.boltlightning, 'FmiIcons.boltlightning'),
              getContainer(FmiIcons.book, 'FmiIcons.book'),
              getContainer(FmiIcons.bookblank, 'FmiIcons.bookblank'),
              getContainer(FmiIcons.bookopen, 'FmiIcons.bookopen'),
              getContainer(FmiIcons.boxespacking, 'FmiIcons.boxespacking'),
              getContainer(FmiIcons.braincircuit, 'FmiIcons.braincircuit'),
              getContainer(FmiIcons.building, 'FmiIcons.building'),
              getContainer(
                  FmiIcons.buildingcolumns, 'FmiIcons.buildingcolumns'),
              getContainer(FmiIcons.bullhorn, 'FmiIcons.bullhorn'),
              getContainer(FmiIcons.businesstime, 'FmiIcons.businesstime'),
              getContainer(FmiIcons.cabinetfiling, 'FmiIcons.cabinetfiling'),
              getContainer(FmiIcons.calendars, 'FmiIcons.calendars'),
              getContainer(FmiIcons.cameracctv, 'FmiIcons.cameracctv'),
              getContainer(FmiIcons.chalkboarduser, 'FmiIcons.chalkboarduser'),
              getContainer(FmiIcons.chartwaterfall, 'FmiIcons.chartwaterfall'),
              getContainer(FmiIcons.checktoslot, 'FmiIcons.checktoslot'),
              getContainer(FmiIcons.circleinfo, 'FmiIcons.circleinfo'),
              getContainer(FmiIcons.city, 'FmiIcons.city'),
              getContainer(FmiIcons.clipboardlist, 'FmiIcons.clipboardlist'),
              getContainer(FmiIcons.coins, 'FmiIcons.coins'),
              getContainer(FmiIcons.comments, 'FmiIcons.comments'),
              getContainer(FmiIcons.commentsdollar, 'FmiIcons.commentsdollar'),
              getContainer(
                  FmiIcons.commentsquestion, 'FmiIcons.commentsquestion'),
              getContainer(FmiIcons.commentsquestioncheck,
                  'FmiIcons.commentsquestioncheck'),
              getContainer(FmiIcons.concur, 'FmiIcons.concur'),
              getContainer(FmiIcons.concurlegacy, 'FmiIcons.concurlegacy'),
              getContainer(
                  FmiIcons.conveyorbeltarm, 'FmiIcons.conveyorbeltarm'),
              getContainer(FmiIcons.copilot, 'FmiIcons.copilot'),
              getContainer(FmiIcons.copilotsolid, 'FmiIcons.copilotsolid'),
              getContainer(
                  FmiIcons.diagramsuccessor, 'FmiIcons.diagramsuccessor'),
              getContainer(FmiIcons.dna, 'FmiIcons.dna'),
              getContainer(FmiIcons.dovetail, 'FmiIcons.dovetail'),
              getContainer(FmiIcons.dovetailsolid, 'FmiIcons.dovetailsolid'),
              getContainer(FmiIcons.drill, 'FmiIcons.drill'),
              getContainer(FmiIcons.drilllight, 'FmiIcons.drilllight'),
              getContainer(FmiIcons.ease, 'FmiIcons.ease'),
              getContainer(FmiIcons.easesolid, 'FmiIcons.easesolid'),
              getContainer(FmiIcons.eightfold, 'FmiIcons.eightfold'),
              getContainer(FmiIcons.eightfoldsolid, 'FmiIcons.eightfoldsolid'),
              getContainer(FmiIcons.enablon, 'FmiIcons.enablon'),
              getContainer(FmiIcons.enabalonsolid, 'FmiIcons.enabalonsolid'),
              getContainer(FmiIcons.equipment, 'FmiIcons.equipment'),
              getContainer(FmiIcons.equipmentlight, 'FmiIcons.equipmentlight'),
              getContainer(FmiIcons.figma, 'FmiIcons.figma'),
              getContainer(FmiIcons.figmasolid, 'FmiIcons.figmasolid'),
              getContainer(
                  FmiIcons.filechartcolumn, 'FmiIcons.filechartcolumn'),
              getContainer(FmiIcons.filechartpie, 'FmiIcons.filechartpie'),
              getContainer(FmiIcons.filecircleexclamation,
                  'FmiIcons.filecircleexclamation'),
              getContainer(FmiIcons.filecircleplus, 'FmiIcons.filecircleplus'),
              getContainer(
                  FmiIcons.fileexclamation, 'FmiIcons.fileexclamation'),
              getContainer(FmiIcons.fileinvoice, 'FmiIcons.fileinvoice'),
              getContainer(
                  FmiIcons.fileinvoicedollar, 'FmiIcons.fileinvoicedollar'),
              getContainer(FmiIcons.filelines, 'FmiIcons.filelines'),
              getContainer(FmiIcons.fileshield, 'FmiIcons.fileshield'),
              getContainer(FmiIcons.filesignature, 'FmiIcons.filesignature'),
              getContainer(FmiIcons.flutter, 'FmiIcons.flutter'),
              getContainer(FmiIcons.fluttersolid, 'FmiIcons.fluttersolid'),
              getContainer(FmiIcons.fmi, 'FmiIcons.fmi'),
              getContainer(FmiIcons.fminews, 'FmiIcons.fminews'),
              getContainer(FmiIcons.fminewslight, 'FmiIcons.fminewslight'),
              getContainer(FmiIcons.gameboard, 'FmiIcons.gameboard'),
              getContainer(FmiIcons.gifts, 'FmiIcons.gifts'),
              getContainer(FmiIcons.graduationcap, 'FmiIcons.graduationcap'),
              getContainer(FmiIcons.handshake, 'FmiIcons.handshake'),
              getContainer(
                  FmiIcons.haultruckoperator, 'FmiIcons.haultruckoperator'),
              getContainer(FmiIcons.headset, 'FmiIcons.headset'),
              getContainer(FmiIcons.headset1, 'FmiIcons.headset1'),
              getContainer(FmiIcons.heartpulse, 'FmiIcons.heartpulse'),
              getContainer(FmiIcons.iconscout, 'FmiIcons.iconscout'),
              getContainer(FmiIcons.iconscoutsolid, 'FmiIcons.iconscoutsolid'),
              getContainer(FmiIcons.industry, 'FmiIcons.industry'),
              getContainer(
                  FmiIcons.industrywindows, 'FmiIcons.industrywindows'),
              getContainer(FmiIcons.laptopfile, 'FmiIcons.laptopfile'),
              getContainer(FmiIcons.laptopmobile, 'FmiIcons.laptopmobile'),
              getContainer(FmiIcons.listcheck, 'FmiIcons.listcheck'),
              getContainer(FmiIcons.listol, 'FmiIcons.listol'),
              getContainer(FmiIcons.listtimeline, 'FmiIcons.listimeline'),
              getContainer(FmiIcons.listtree, 'FmiIcons.listtree'),
              getContainer(FmiIcons.loadhaul, 'FmiIcons.loadhaul'),
              getContainer(FmiIcons.loadhaullight, 'FmiIcons.loadhaullight'),
              getContainer(FmiIcons.maplocationdot, 'FmiIcons.maplocationdot'),
              getContainer(FmiIcons.mat3, 'FmiIcons.mat3'),
              getContainer(FmiIcons.mds, 'FmiIcons.mds'),
              getContainer(FmiIcons.medal, 'FmiIcons.medal'),
              getContainer(FmiIcons.memocircleinfo, 'FmiIcons.memocircleinfo'),
              getContainer(FmiIcons.messagedots, 'FmiIcons.messagedots'),
              getContainer(
                  FmiIcons.messagesquestion, 'FmiIcons.messagesquestion'),
              getContainer(FmiIcons.meter, 'FmiIcons.meter'),
              getContainer(
                  FmiIcons.microphonelines, 'FmiIcons.microphonelines'),
              getContainer(
                  FmiIcons.moneybilltransfer, 'FmiIcons.moneybilltransfer'),
              getContainer(FmiIcons.moneycheck, 'FmiIcons.moneycheck'),
              getContainer(
                  FmiIcons.moneycheckdollarpen, 'FmiIcons.moneycheckdollarpen'),
              getContainer(
                  FmiIcons.moneyfrombracket, 'FmiIcons.moneyfrombracket'),
              getContainer(FmiIcons.networkwired, 'FmiIcons.networkwired'),
              getContainer(FmiIcons.newspaper, 'FmiIcons.newspaper'),
              getContainer(FmiIcons.oilwell, 'FmiIcons.oilwell'),
              getContainer(FmiIcons.opshub, 'FmiIcons.opshub'),
              getContainer(FmiIcons.opshublight, 'FmiIcons.opshublight'),
              getContainer(
                  FmiIcons.paintbrushpencil, 'FmiIcons.paintbrushpencil'),
              getContainer(FmiIcons.pennib, 'FmiIcons.pennib'),
              getContainer(FmiIcons.penruler, 'FmiIcons.penruler'),
              getContainer(FmiIcons.pentosquare, 'FmiIcons.pentosquare'),
              getContainer(FmiIcons.peoplepulling, 'FmiIcons.peoplepulling'),
              getContainer(FmiIcons.peopleroof, 'FmiIcons.peopleroof'),
              getContainer(
                  FmiIcons.personchalkboard, 'FmiIcons.personchalkboard'),
              getContainer(
                  FmiIcons.personcircleplus, 'FmiIcons.personcircleplus'),
              getContainer(FmiIcons.persontoportal, 'FmiIcons.persontoportal'),
              getContainer(FmiIcons.phoneoffice, 'FmiIcons.phoneoffice'),
              getContainer(FmiIcons.plane, 'FmiIcons.plane'),
              getContainer(
                  FmiIcons.planecirclecheck, 'FmiIcons.planecirclecheck'),
              getContainer(FmiIcons.powerbi, 'FmiIcons.powerbi'),
              getContainer(FmiIcons.ramploading, 'FmiIcons.ramploading'),
              getContainer(FmiIcons.receipt, 'FmiIcons.receipt'),
              getContainer(FmiIcons.reel, 'FmiIcons.reel'),
              getContainer(FmiIcons.robin, 'FmiIcons.robin'),
              getContainer(FmiIcons.rotate, 'FmiIcons.rotate'),
              getContainer(FmiIcons.rotatesolid, 'FmiIcons.rotatesolid'),
              getContainer(FmiIcons.sap, 'FmiIcons.sap'),
              getContainer(FmiIcons.sapsolid, 'FmiIcons.sapsolid'),
              getContainer(
                  FmiIcons.screwdriverwrench, 'FmiIcons.screwdriverwrench'),
              getContainer(FmiIcons.sensortriangleexclamation,
                  'FmiIcons.sensortriangleexclamation'),
              getContainer(FmiIcons.servicenow, 'FmiIcons.servicenow'),
              getContainer(FmiIcons.servicenow1, 'FmiIcons.servicenow1'),
              getContainer(FmiIcons.sharepoint, 'FmiIcons.sharepoint'),
              getContainer(
                  FmiIcons.sharepointsolid, 'FmiIcons.sharepointsolid'),
              getContainer(FmiIcons.shieldcheck, 'FmiIcons.shieldcheck'),
              getContainer(FmiIcons.shieldheart, 'FmiIcons.shieldheart'),
              getContainer(FmiIcons.sparkles, 'FmiIcons.sparkles'),
              getContainer(FmiIcons.squarelist, 'FmiIcons.squarelist'),
              getContainer(FmiIcons.successfactors, 'FmiIcons.successfactors'),
              getContainer(FmiIcons.successfactorsyellowlegacy,
                  'FmiIcons.successfactorsyellowlegacy'),
              getContainer(FmiIcons.syncfusion, 'FmiIcons.syncfusion'),
              getContainer(
                  FmiIcons.syncfusionsolid, 'FmiIcons.syncfusionsolid'),
              getContainer(FmiIcons.tablecolumns, 'FmiIcons.tablecolumns'),
              getContainer(FmiIcons.tablerows, 'FmiIcons.tablerows'),
              getContainer(FmiIcons.tag, 'FmiIcons.tag'),
              getContainer(FmiIcons.truckrampbox, 'FmiIcons.truckrampbox'),
              getContainer(FmiIcons.udemy, 'FmiIcons.udemy'),
              getContainer(FmiIcons.udemysolid, 'FmiIcons.udemysolid'),
              getContainer(FmiIcons.users, 'FmiIcons.users'),
              getContainer(FmiIcons.usersgear, 'FmiIcons.usersgear'),
              getContainer(FmiIcons.usershield, 'FmiIcons.usershield'),
              getContainer(FmiIcons.usersline, 'FmiIcons.usersline'),
              getContainer(FmiIcons.usersmedical, 'FmiIcons.usersmedical'),
              getContainer(FmiIcons.usertiehair, 'FmiIcons.usertiehair'),
              getContainer(FmiIcons.virus, 'FmiIcons.virus'),
              getContainer(FmiIcons.workforce, 'FmiIcons.workforce'),
              getContainer(FmiIcons.xmarktoslot, 'FmiIcons.xmarktoslot'),
            ]),
      ],
    );
  }
}
