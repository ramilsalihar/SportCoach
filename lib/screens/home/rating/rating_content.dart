import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_coach/navigation/app_router.gr.dart';
import 'package:sport_coach/providers/rating_notifier.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';
import 'package:sport_coach/widgets/forms/rating_bar.dart';
import 'package:sport_coach/widgets/layout/empty_body.dart';

class RatingContent extends StatelessWidget {
  const RatingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 15,
        right: 15,
      ),
      child: Consumer<RatingNotifier>(
        builder: (context, ratingNotifier, _) {
          final isEmpty = ratingNotifier.ratings.isEmpty;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              isEmpty
                  ? EmptyBody(
                      title: 'Rating athletes',
                      message: 'Here you can leave \nratings for athletes',
                      buttonText: 'Click to add new rating',
                      onPressed: () {
                        final rating = context.read<RatingNotifier>();
                        context.router.push(
                          NewRating(
                            index: rating.ratingIndex,
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
      child: Text('Rating', style: theme.displayLarge),
    );
  }

  Widget _buildArticleList(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: Consumer<RatingNotifier>(
        builder: (context, ratingNotifier, _) {
          final ratings = ratingNotifier.ratings;
          return ListView.builder(
            itemCount: ratings.length,
            itemBuilder: (context, index) {
              final athlete = ratings[index];
              return AppCard(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        athlete.name,
                        style: theme.displaySmall,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Rating: ${athlete.rating}',
                        style:
                            theme.headlineSmall!.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      const RatingBar(
                        initialRating: 3,
                      ),
                    ],
                  ));
            },
          );
        },
      ),
    );
  }
}
