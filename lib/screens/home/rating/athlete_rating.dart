import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/models/rating_model.dart';
import 'package:sport_coach/providers/rating_notifier.dart';
import 'package:sport_coach/widgets/forms/app_text_form_field.dart';
import 'package:sport_coach/widgets/forms/rating_bar.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class AthleteRating extends StatefulWidget {
  const AthleteRating({
    super.key,
    required this.index,
    required this.title,
    this.isEdit = false,
  });

  final int index;
  final bool isEdit;
  final String title;

  @override
  State<AthleteRating> createState() => _AthleteRatingState();
}

class _AthleteRatingState extends State<AthleteRating> {
  final executorController = TextEditingController();
  int athleteRating = 0;

  void _saveRating() async {
    final index = widget.isEdit ? widget.index : (widget.index + 1);
    final training = RatingModel(
      index: index,
      name: executorController.text,
      rating: athleteRating,
    );

    final trainingNotifier = context.read<RatingNotifier>();

    print('Rating: $training');

    if (widget.isEdit) {
      await trainingNotifier.editRating(widget.index, training);
    } else {
      await trainingNotifier.addRating(training);
      await trainingNotifier.setRatingIndex(widget.index + 1);
    }

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.primaryColor,
        appBar: CustomAppBar(
          title: widget.title,
          actions: [
            TextButton(
              onPressed: _saveRating,
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
                  RatingBar(
                    initialRating: athleteRating,
                    onRatingChanged: (rating) {
                      setState(() {
                        athleteRating = rating;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
