import 'package:poc/ui/components/components.dart';
import 'package:poc/enums/enums.dart';

class FormStep{
  FormStepStatus formStepStatus;
  FormStepCard formStepCard;

  FormStep({
    required this.formStepStatus,
    required this.formStepCard
  });
}