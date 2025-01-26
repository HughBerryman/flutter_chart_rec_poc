import 'package:flutter/material.dart';
import 'package:fmi_core/fmi_core.dart';

class FormStepCard extends StatefulWidget{
  final List<Widget> cardContent;

  const FormStepCard({
    Key? key,
    required this.cardContent}) : super(key: key);

  @override
  State<FormStepCard> createState() => _FormStepCardState();
}

class _FormStepCardState extends State<FormStepCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.formBackground,
      ),
      child: Container(
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - 148
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(left: 16, top: 72, right: 16, bottom: 76 ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          // TO DO: WHEN WE HAVE A TOKEN DEFINED FOR THIS BORDER RADIUS, WILL NEED UPDATED
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0,3)
            )
          ]
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: widget.cardContent,
        ),
      ),
    );
  }
}