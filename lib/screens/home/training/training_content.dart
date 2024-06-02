import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/layout/empty_body.dart';

class TrainingContent extends StatelessWidget {
  const TrainingContent({super.key});

  @override
  Widget build(BuildContext context) {
    const isEmpty = false;
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 15,
        right: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          Expanded(
            child: isEmpty
                ? EmptyBody(
                    title: 'Training Programs',
                    message:
                        'Here will be your training \nprograms for sportsman',
                    onPressed: () {},
                  )
                : _buildArticleList(context),
          )
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 5,
      ),
      child: Text('Training', style: theme.displayLarge),
    );
  }

  Widget _buildArticleList(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return AppCard(
            onTap: () {
              context.router.push(TrainingRoute(title: 'Training Detail'));
            },
            child: Column(
              children: [
                SizedBox(
                  height: 112,
                  width: 340,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/training.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Mario Smith',
                  style: theme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
