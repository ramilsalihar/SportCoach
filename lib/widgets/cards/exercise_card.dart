import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/providers/training_notifier.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppCard(
      child: Consumer<TrainingNotifier>(
        builder: (context, trainingNotifier, _) {
          final training = trainingNotifier.findByIndex(index);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                training!.exName,
                style: theme.textTheme.displayMedium,
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildData(context, training.exRepetitions, 'Repetitions'),
                  const SizedBox(width: 30),
                  _buildDivider(),
                  const SizedBox(width: 30),
                  _buildData(context, training.exApproaches, 'Approaches'),
                  const SizedBox(width: 30),
                  _buildDivider(),
                  const SizedBox(width: 30),
                  _buildData(context, training.exWeight, 'Weight'),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

Widget _buildData(
  BuildContext context,
  String value,
  String text,
) {
  final theme = Theme.of(context).textTheme;
  return Column(
    children: [
      Text(
        value,
        style: theme.displayLarge!.copyWith(
          color: Colors.blue,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        text,
        style: theme.displaySmall!.copyWith(
          color: Colors.grey,
        ),
      ),
    ],
  );
}

Widget _buildDivider() {
  return Container(
    width: 1,
    height: 50,
    color: Colors.blue,
  );
}
