import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class NewTrainingProgram extends StatelessWidget {
  const NewTrainingProgram({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: CustomAppBar(
        title: 'New Personal Program',
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Add',
              style: theme.textTheme.headlineMedium!.copyWith(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: width * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.grey,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            _TrainingForm(context),
          ],
        ),
      ),
    );
  }
}

Widget _TrainingForm(BuildContext context) {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final classesController = TextEditingController();
  final durationController = TextEditingController();
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
              controller: ageController,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: AppTextFormField(
              hintText: 'Enter',
              title: 'Approaches',
              controller: ageController,
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
        controller: ageController,
      ),
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Repetitions',
        controller: weightController,
      ),
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Approaches',
        controller: heightController,
      ),
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Weight',
        controller: classesController,
      ),
    ],
  );
}
