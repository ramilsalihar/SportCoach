import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/providers/event_notifier.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class EventScreen extends StatelessWidget {
  const EventScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Consumer<EventNotifier>(
      builder: (context, eventNotifier, _) {
        final event = eventNotifier.findByIndex(index);
        return Scaffold(
          backgroundColor: theme.primaryColor,
          appBar: CustomAppBar(
            title: event!.name,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
                onPressed: () {
                  context.router.push(
                    EventEdit(
                      index: event.index,
                      title: event.name,
                      isEdit: true,
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.blue,
                ),
                onPressed: () {
                  final event = context.read<EventNotifier>();
                  event.deleteEvent(event.eventIndex);
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.name,
                  style: theme.textTheme.displayLarge,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    _buildDetail(
                      context,
                      'Date',
                      event.date,
                      Icons.calendar_today,
                    ),
                    const SizedBox(width: 16),
                    _buildDetail(
                      context,
                      'Time',
                      event.time,
                      null,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _buildDetail(
                  context,
                  'Location',
                  event.location,
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
                  event.description,
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
                        backgroundImage:
                            AssetImage('assets/images/athlete.png'),
                        radius: 24,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        event.athlete.name,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
