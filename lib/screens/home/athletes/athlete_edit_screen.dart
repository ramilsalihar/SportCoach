import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';

@RoutePage()
class AthleteEditScreen extends StatelessWidget {
  const AthleteEditScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(title, style: theme.textTheme.displaySmall),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
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
            _AthleteForm(),
          ],
        ),
      ),
    );
  }
}

Widget _AthleteForm() {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final classesController = TextEditingController();
  final durationController = TextEditingController();
  return Column(
    children: [
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Name',
        controller: nameController,
      ),
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Age',
        controller: ageController,
      ),
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Weight',
        controller: weightController,
      ),
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Height',
        controller: heightController,
      ),
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Classes per month',
        controller: classesController,
      ),
      const SizedBox(height: 10),
      AppTextFormField(
        hintText: 'Enter',
        title: 'Duration',
        controller: durationController,
      ),
    ],
  );
}
