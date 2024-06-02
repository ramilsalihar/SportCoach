import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class EventEdit extends StatefulWidget {
  const EventEdit({super.key});

  @override
  State<EventEdit> createState() => _EventEditState();
}

class _EventEditState extends State<EventEdit> {
  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();
  final athleteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: CustomAppBar(
        title: 'Edit Event',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextFormField(
              hintText: 'Enter',
              title: 'Name',
              controller: nameController,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Date and Time',
                  style: theme.textTheme.headlineMedium!
                      .copyWith(color: Colors.grey[600]),
                ),
                const SizedBox(width: 16),
                AppCard(
                  child: Text(
                    '16 Jan 2024',
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                AppCard(
                  child: Text(
                    '12:00 AM',
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            AppTextFormField(
              hintText: 'Enter',
              title: 'Location',
              controller: locationController,
            ),
            const SizedBox(height: 8),
            AppTextFormField(
              hintText: 'Enter',
              title: 'Description',
              controller: descriptionController,
            ),
            const SizedBox(height: 8),
            AppTextFormField(
              hintText: 'Enter',
              title: 'Athlete',
              controller: athleteController,
            ),
          ],
        ),
      ),
    );
  }
}
