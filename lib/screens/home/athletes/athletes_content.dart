import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/providers/athlete_notifier.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/cards/statistics_card.dart';
import 'package:sport_coach/widgets/layout/empty_body.dart';

class AthletesContent extends StatelessWidget {
  const AthletesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 15,
        right: 15,
      ),
      child: Consumer<AthleteNotifier>(
        builder: (context, athleteNotifier, _) {
          final isEmpty = athleteNotifier.isEmpty;
          print('isEmpty: $isEmpty');
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const StatisticsCard(),
              isEmpty
                  ? EmptyBody(
                      title: 'Players',
                      message: 'Your athletes will be\nrepresented here',
                      buttonText: 'Click to add new players',
                      onPressed: () async {
                        final athlete = context.read<AthleteNotifier>();
                        context.router.push(
                          AthleteEditRoute(
                            title: 'New Athlete',
                            index: athlete.athleteIndex,
                          ),
                        );
                      },
                    )
                  : _buildArticleList(context),
            ],
          );
        },
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
      child: Text(
        'Athlete',
        style: theme.displayLarge,
      ),
    );
  }

  Widget _buildArticleList(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: Consumer<AthleteNotifier>(
        builder: (context, athleteNotifier, _) {
          final data = athleteNotifier.athletes;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 14,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return AppCard(
                onTap: () {
                  print('index: ${data}');
                  context.router.push(
                    AthleteRoute(
                      index: data[index].index,
                    ),
                  );
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
                      data.elementAt(index).name,
                      style: theme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
