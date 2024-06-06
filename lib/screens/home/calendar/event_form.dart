import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';

class EventForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController locationController;
  final TextEditingController descriptionController;
  final TextEditingController athleteController;

  const EventForm({
    super.key,
    required this.nameController,
    required this.locationController,
    required this.descriptionController,
    required this.athleteController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
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
    );
  }
}
