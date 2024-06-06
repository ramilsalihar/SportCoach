import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/providers/training_notifier.dart';
import 'package:sport_coach/widgets/cards/exercise_card.dart';
import 'package:sport_coach/widgets/cards/number_card.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Consumer<TrainingNotifier>(
        builder: (context, trainingNotifier, _) {
          final training = trainingNotifier.findByIndex(index);

          if (training == null) {
            return const SizedBox();
          }

          return Scaffold(
            backgroundColor: theme.primaryColor,
            appBar: CustomAppBar(
              title: training!.name,
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    context.router.push(NewTrainingProgram(
                      isEdit: true,
                      index: training.index,
                      title: training.name,
                    ));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    context.read<TrainingNotifier>().deleteTraining(index);
                    Navigator.of(context).pop();
                  },
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      NumberCard(
                          value: training.repetition, text: 'Repetitions'),
                      const SizedBox(width: 15),
                      NumberCard(
                          value: training.approaches, text: 'Approaches'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Exercises',
                    style: theme.textTheme.displayMedium,
                  ),
                  const SizedBox(height: 15),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ExerciseCard(
                        index: training.index,
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDetail(
    BuildContext context,
    String title,
    String value,
  ) {
    final theme = Theme.of(context);
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$title   ',
            style: theme.textTheme.headlineSmall!.copyWith(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          TextSpan(
            text: value,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
