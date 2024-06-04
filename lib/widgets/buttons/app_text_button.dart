import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.width,
    this.height,
    required this.title,
    required this.onPressed,
  });

  final double? width;
  final double? height;
  final Widget title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Container(
        height: height ?? 40,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: title,
        ),
      ),
    );
  }
}
