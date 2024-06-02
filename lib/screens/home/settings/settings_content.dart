import 'package:flutter/material.dart';
import 'package:sport_coach/widgets/cards/app_card.dart';

class SettingsContent extends StatelessWidget {
  const SettingsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: theme.textTheme.displayLarge,
            ),
            const SizedBox(height: 40),
            AppCard(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildListTile(
                    context,
                    iconPath: 'assets/icons/share.png',
                    text: 'Share app',
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildListTile(
                    context,
                    iconPath: 'assets/icons/policy.png',
                    text: 'Usage Policy',
                    onTap: () {},
                  ),
                  _buildDivider(),
                  _buildListTile(
                    context,
                    iconPath: 'assets/icons/rating.png',
                    text: 'Rate app',
                    onTap: () {},
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

Widget _buildListTile(
  BuildContext context, {
  required String iconPath,
  required String text,
  required VoidCallback onTap,
}) {
  final theme = Theme.of(context);
  return ListTile(
    leading: Image.asset(
      iconPath,
      width: 24,
      height: 24,
      color: Colors.blue,
    ),
    title: Text(
      text,
      style: theme.textTheme.displaySmall,
    ),
    trailing: const Icon(
      Icons.arrow_forward_ios,
      color: Colors.blue,
    ),
    onTap: onTap,
  );
}

Widget _buildDivider() {
  return const Divider(
    color: Colors.blue,
    thickness: 1,
  );
}
