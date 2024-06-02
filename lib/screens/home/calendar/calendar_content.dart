import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/layout/empty_body.dart';

final List<Map<String, dynamic>> events = [
  {
    'date': '16.01.2024',
    'events': [
      {
        'title': 'Team competition',
        'time': '12:00 AM',
        'description':
            'Competitions are held between teams. They asked to arrive 2 hours earlier for registration.'
      },
    ],
  },
  {
    'date': '20.01.2024',
    'events': [
      {
        'title': 'Training',
        'time': '09:00 AM',
        'description': 'Pre-competition training'
      },
      {
        'title': 'Regional competitions',
        'time': '13:00 PM',
        'description': 'The entrance fee has been paid. Need to book a hotel'
      },
    ],
  },
  {
    'date': '27.01.2024',
    'events': [
      {
        'title': 'Training in the gym',
        'time': '10:00 AM',
        'description': 'Personal lesson'
      },
      {
        'title': 'Training in the gym',
        'time': '12:00 AM',
        'description': 'Personal lesson'
      },
    ],
  },
];

class CalendarContent extends StatelessWidget {
  const CalendarContent({super.key});

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
          isEmpty
              ? EmptyBody(
                  title: 'Calendar of Events',
                  message: 'Events for athletes will \nbe recorded there',
                  onPressed: () {},
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
      child: Text('Calendar', style: theme.displayLarge),
    );
  }

  Widget _buildArticleList(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Text(
                  events[index]['date'],
                  style: theme.displayMedium,
                ),
              ),
              ...events[index]['events'].map<Widget>((event) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: AppCard(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                event['title'],
                                style: theme.displaySmall,
                              ),
                              Text(
                                event['time'],
                                style: theme.headlineSmall,
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.blue,
                            thickness: 1,
                          ),
                          const SizedBox(height: 8),
                          Text(event['description'],
                              style: theme.headlineSmall!.copyWith(
                                color: Colors.grey.withOpacity(0.7),
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}
