import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/providers/athlete_notifier.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/cards/statistics_card.dart';
import 'package:sport_coach/widgets/layout/empty_body.dart';

class AthletesContent extends StatelessWidget {
  const AthletesContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isEmpty = Provider.of<AthleteNotifier>(context).isEmpty;
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
          const StatisticsCard(),
          isEmpty
              ? EmptyBody(
                  title: 'Players',
                  message: 'Your athletes will be\nrepresented here',
                  buttonText: 'Click to add new players',
                  onPressed: () {
                    // context.router.pushNamed('/athlete');
                  },
                )
              : _buildArticleList(context),
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
      child: Text('Athlete', style: theme.displayLarge),
    );
  }

  Widget _buildArticleList(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 14,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return AppCard(
            onTap: () {
              context.router.pushNamed('/athlete');
            },
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/athlete.png',
                        fit: BoxFit.fill,
                      ),
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
        },
      ),
    );
  }
}
