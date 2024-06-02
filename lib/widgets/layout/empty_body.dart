import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/buttons/app_text_button.dart';

class EmptyBody extends StatelessWidget {
  const EmptyBody({
    super.key,
    required this.title,
    required this.message,
    required this.onPressed,
  });

  final String title;
  final String message;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: theme.displayLarge,
              ),
              const SizedBox(height: 10),
              Text(
                message,
                style: theme.headlineSmall!.copyWith(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 230,
                child: AppTextButton(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Click to add new players',
                        style: theme.displaySmall,
                      ),
                    ],
                  ),
                  onPressed: onPressed,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
