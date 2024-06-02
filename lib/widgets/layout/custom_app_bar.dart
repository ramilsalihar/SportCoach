import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.backButton,
    this.actions,
  });

  final String title;
  final bool? backButton;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      automaticallyImplyLeading: backButton ?? true,
      toolbarHeight: 80,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(title, style: theme.textTheme.displaySmall),
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
