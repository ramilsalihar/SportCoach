import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: CustomAppBar(
        title: 'Event',
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit,
              color: Colors.blue,
            ),
            onPressed: () {
              context.router.push(
                const EventEdit(),
              );
            },
          ),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Team competition',
              style: theme.textTheme.displayLarge,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                _buildDetail(
                  context,
                  'Date',
                  '16.01.2024',
                  Icons.calendar_today,
                ),
                const SizedBox(width: 16),
                _buildDetail(
                  context,
                  'Time',
                  '12:00 AM',
                  null,
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildDetail(
              context,
              'Location',
              '137 Nice Avenue 13B LA',
              Icons.location_on,
            ),
            const SizedBox(height: 16),
            Text(
              'Description',
              style: theme.textTheme.headlineMedium!.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Competitions are held between teams. They asked to arrive 2 hours earlier for registration.',
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'Athlete',
              style: theme.textTheme.headlineMedium!.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            AppCard(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/athlete.png'),
                    radius: 24,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'James Smith',
                    style: theme.textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildDetail(
  BuildContext context,
  String title,
  String value,
  IconData? icon,
) {
  final theme = Theme.of(context).textTheme;
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.white,
        size: 16,
      ),
      const SizedBox(width: 8),
      Text(
        title,
        style: theme.displaySmall,
      ),
      const SizedBox(width: 16),
      Text(
        '• $value',
        style: theme.headlineSmall!.copyWith(
          color: Colors.blue,
        ),
      ),
    ],
  );
}
