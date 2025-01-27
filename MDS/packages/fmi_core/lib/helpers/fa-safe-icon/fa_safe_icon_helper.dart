import 'package:fmi_core/enums/enums.dart';

String getSvgPath(FASafeIcons value) {
  switch (value) {
    case FASafeIcons.blasting:
      return 'assets/images/fa-safe-svgs/FRMIcon_Blasting.svg';
    case FASafeIcons.boatCollision:
      return 'assets/images/fa-safe-svgs/FRMIcon_BoatCollision.svg';
    case FASafeIcons.confinedSpaces:
      return 'assets/images/fa-safe-svgs/FRMIcon_ConfinedSpaces.svg';
    case FASafeIcons.contactMolten:
      return 'assets/images/fa-safe-svgs/FRMIcon_ContactMolten.svg';
    case FASafeIcons.drowning:
      return 'assets/images/fa-safe-svgs/FRMIcon_Drowning.svg';
    case FASafeIcons.entangleCrushing:
      return 'assets/images/fa-safe-svgs/FRMIcon_EntangleCrushing.svg';
    case FASafeIcons.exposureAcute:
      return 'assets/images/fa-safe-svgs/FRMIcon_ExposureAcute.svg';
    case FASafeIcons.exposureChronic:
      return 'assets/images/fa-safe-svgs/FRMIcon_ExposureChronic.svg';
    case FASafeIcons.exposureElectricalHazards:
      return 'assets/images/fa-safe-svgs/FRMIcon_ExposureElectricalHazards.svg';
    case FASafeIcons.fallingObjects:
      return 'assets/images/fa-safe-svgs/FRMIcon_FallingObjects.svg';
    case FASafeIcons.fire:
      return 'assets/images/fa-safe-svgs/FRMIcon_Fire.svg';
    case FASafeIcons.groundFailure:
      return 'assets/images/fa-safe-svgs/FRMIcon_GroundFailure.svg';
    case FASafeIcons.interactionAircraft:
      return 'assets/images/fa-safe-svgs/FRMIcon_InteractionAircraft.svg';
    case FASafeIcons.liftingOps:
      return 'assets/images/fa-safe-svgs/FRMIcon_LiftingOps.svg';
    case FASafeIcons.personnelHoist:
      return 'assets/images/fa-safe-svgs/FRMIcon_PersonnelHoist.svg';
    case FASafeIcons.railCollision:
      return 'assets/images/fa-safe-svgs/FRMIcon_RailCollision.svg';
    case FASafeIcons.railImpactPerson:
      return 'assets/images/fa-safe-svgs/FRMIcon_RailImpactPerson.svg';
    case FASafeIcons.uncontrolledRelease:
      return 'assets/images/fa-safe-svgs/FRMIcon_UncontrolledRelease.svg';
    case FASafeIcons.undergroundHazardAtmos:
      return 'assets/images/fa-safe-svgs/FRMIcon_UndergroundHazardAtmos.svg';
    case FASafeIcons.undergroundInrush:
      return 'assets/images/fa-safe-svgs/FRMIcon_UndergroundInrush.svg';
    case FASafeIcons.undergroundRock:
      return 'assets/images/fa-safe-svgs/FRMIcon_UndergroundRock.svg';
    case FASafeIcons.vehicleCollision:
      return 'assets/images/fa-safe-svgs/FRMIcon_VehicleCollision.svg';
    case FASafeIcons.vehicleImpactPerson:
      return 'assets/images/fa-safe-svgs/FRMIcon_VehicleImpactPerson.svg';
    case FASafeIcons.fallFromHeights:
      return 'assets/images/fa-safe-svgs/FRMIcon_FallFromHeights.svg';
  }
}
