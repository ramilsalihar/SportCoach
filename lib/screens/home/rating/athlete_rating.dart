import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';
import 'package:sport_coach/widgets/forms/rating_bar.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class AthleteRating extends StatelessWidget {
  const AthleteRating({super.key});

  @override
  Widget build(BuildContext context) {
    final executorController = TextEditingController();
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: CustomAppBar(
        title: 'For Athlete',
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: theme.textTheme.headlineMedium,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppTextFormField(
              hintText: 'Enter',
              title: 'Executor',
              controller: executorController,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Activity rating',
                  style: theme.textTheme.headlineMedium!.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const RatingBar(rating: 4)
              ],
            )
          ],
        ),
      ),
    );
  }
}
