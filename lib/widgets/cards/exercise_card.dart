import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Barbell bench press',
            style: theme.textTheme.displayMedium,
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildData(context, '3', 'Repetitions'),
              const SizedBox(width: 30),
              _buildDivider(),
              const SizedBox(width: 30),
              _buildData(context, '4-6', 'Approaches'),
              const SizedBox(width: 30),
              _buildDivider(),
              const SizedBox(width: 30),
              _buildData(context, '25', 'Weight'),
            ],
          ),
        ],
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
