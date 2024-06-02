import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/layout/custom_app_bar.dart';

@RoutePage()
class NewRating extends StatelessWidget {
  const NewRating({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: const CustomAppBar(
        title: 'New Rating',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _buildCard(context, 'For Athlete'),
            const SizedBox(
              height: 10,
            ),
            _buildCard(context, 'For Team')
          ],
        ),
      ),
    );
  }
}

Widget _buildCard(BuildContext context, String title) {
  final theme = Theme.of(context);
  return AppCard(
    child: Row(
      children: [
        Text(
          title,
          style: theme.textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
          ),
        )
      ],
    ),
  );
}
