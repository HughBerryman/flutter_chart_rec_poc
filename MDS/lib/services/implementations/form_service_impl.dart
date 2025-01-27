import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poc/enums/form_step_status.dart';
import 'package:poc/models/form_step.dart';
import 'package:poc/services/interfaces/form_service.dart';
import 'package:poc/ui/components/form_step_card.dart';

class FormServiceImpl implements FormService {
  @override
  Future<List<FormStep>> getFormSteps() async {
    // MOCK API DELAY
    await Future.delayed(const Duration(milliseconds: 2000));

    // MOCKING RESPONSE, IN FUTURE SERVICES WILL BE UNAWARE OF UI ELEMENTS, THIS IS FOR EXAMPLE PURPOSE
    List<FormStep> sampleFormSteps = [0, 1, 2, 3, 4].map((i) {
      return FormStep(
          formStepStatus:
              i % 2 == 0 ? FormStepStatus.incomplete : FormStepStatus.complete,
          formStepCard: FormStepCard(cardContent: [
            Container(
                constraints: const BoxConstraints(minHeight: 1000),
                child: Column(children: [
                  Text('Page ${i + 1}'),
                  const FaIcon(FontAwesomeIcons.fortAwesome),
                  const FaIcon(FontAwesomeIcons.gamepad),
                  const FaIcon(FontAwesomeIcons.solidGamepad),
                  const FaIcon(FontAwesomeIcons.lightGamepad),
                ]))
          ]));
    }).toList();

    return sampleFormSteps;
  }
}
