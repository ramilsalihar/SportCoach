import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';

class TrainingForm extends StatelessWidget {
  const TrainingForm({
    super.key,
    required this.nameController,
    required this.repetitionsController,
    required this.approachesController,
    required this.exNameController,
    required this.exRepetitionController,
    required this.exApproachesController,
    required this.exWeightController,
  });

  final TextEditingController nameController;
  final TextEditingController repetitionsController;
  final TextEditingController approachesController;
  final TextEditingController exNameController;
  final TextEditingController exRepetitionController;
  final TextEditingController exApproachesController;
  final TextEditingController exWeightController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: 'Enter',
          title: 'Name',
          controller: nameController,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                hintText: 'Enter',
                title: 'Repetitions',
                controller: repetitionsController,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: AppTextFormField(
                hintText: 'Enter',
                title: 'Approaches',
                controller: approachesController,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'Exercises',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: 'Enter',
          title: 'Name',
          controller: exNameController,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: 'Enter',
          title: 'Repetitions',
          controller: exRepetitionController,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: 'Enter',
          title: 'Approaches',
          controller: exApproachesController,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: 'Enter',
          title: 'Weight',
          controller: exWeightController,
        ),
      ],
    );
  }
}
