import 'package:poc/models/models.dart';

abstract class FormService {
  Future<List<FormStep>> getFormSteps();
}