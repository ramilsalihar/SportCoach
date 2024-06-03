import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/forms/rating_bar.dart';
import 'package:sport_coach/widgets/layout/empty_body.dart';

class RatingContent extends StatelessWidget {
  const RatingContent({super.key});

  @override
  Widget build(BuildContext context) {
    const isEmpty = true;
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
                  title: 'Rating athletes',
                  message: 'Here you can leave \nratings for athletes',
                  buttonText: 'Click to add new Rating',
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
      child: Text('Rating', style: theme.displayLarge),
    );
  }

  Widget _buildArticleList(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return AppCard(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Athlete Name',
                style: theme.displaySmall,
              ),
              const SizedBox(height: 10),
              Text(
                'Rating: 4.5',
                style: theme.headlineSmall!.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              const RatingBar(rating: 3),
            ],
          ));
        },
      ),
    );
  }
}
