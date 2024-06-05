import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';

class AthleteForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController ageController;
  final TextEditingController weightController;
  final TextEditingController heightController;
  final TextEditingController classesController;
  final TextEditingController durationController;

  const AthleteForm({
    super.key,
    required this.nameController,
    required this.ageController,
    required this.weightController,
    required this.heightController,
    required this.classesController,
    required this.durationController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: nameController.text ?? '',
          title: 'Name',
          controller: nameController,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: ageController.text ?? '',
          title: 'Age',
          controller: ageController,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: weightController.text ?? '',
          title: 'Weight',
          controller: weightController,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: heightController.text ?? '',
          title: 'Height',
          controller: heightController,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: classesController.text ?? '',
          title: 'Classes per month',
          controller: classesController,
        ),
        const SizedBox(height: 10),
        AppTextFormField(
          hintText: durationController.text ?? '',
          title: 'Duration',
          controller: durationController,
        ),
      ],
    );
  }
}
