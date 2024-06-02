import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    super.key,
    required this.value,
    required this.text,
  });

  final String value;
  final String text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).textTheme;
    return SizedBox(
      width: (width - 45) * 0.5,
      height: 90,
      child: AppCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: theme.displayLarge!.copyWith(color: Colors.blue),
            ),
            Text(
              text,
              style: theme.headlineSmall!.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
