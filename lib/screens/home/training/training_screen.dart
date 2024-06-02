import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/widgets/cards/exercise_card.dart';
import 'package:sport_coach/widgets/cards/number_card.dart';

@RoutePage()
class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
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
            IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                onPressed: () {
                  context.router.push(
                    AthleteEditRoute(title: 'Edit Athlete'),
                  );
                }),
            IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.blue,
              ),
              onPressed: () {},
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
              const Row(
                children: [
                  NumberCard(value: '15', text: 'Repetitions'),
                  SizedBox(width: 15),
                  NumberCard(value: '3', text: 'Approaches'),
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
                  return const ExerciseCard();
                },
              ),
            ],
          ),
        ),
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
