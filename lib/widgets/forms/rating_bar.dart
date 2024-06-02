import 'package:flutter/material.dart';

//TODO: Make it interactive
class RatingBar extends StatelessWidget {
  const RatingBar({super.key, required this.rating});

  final int rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating) {
          return Row(
            children: [
              Image.asset(
                'assets/icons/rating.png',
                width: 30.0,
                height: 30.0,
                color: Colors.blue,
              ),
              const SizedBox(width: 5),
            ],
          );
        } else {
          return Row(
            children: [
              Image.asset(
                'assets/icons/rating.png',
                width: 30.0,
                height: 30.0,
              ),
              const SizedBox(width: 5),
            ],
          );
        }
      }),
    );
  }
}
