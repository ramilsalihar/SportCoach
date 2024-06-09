import 'package:flutter/material.dart';

class RatingBar extends StatefulWidget {
  const RatingBar({
    super.key,
    required this.initialRating,
    this.onRatingChanged,
  });

  final int initialRating;
  final void Function(int)? onRatingChanged;

  @override
  State<RatingBar> createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  int? _rating;

  @override
  void initState() {
    super.initState();
    _rating = widget.initialRating;
  }

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
    if (widget.onRatingChanged != null) {
      widget.onRatingChanged!(rating);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            _setRating(index + 1);
          },
          child: Row(
            children: [
              Image.asset(
                'assets/icons/rating.png',
                width: 30.0,
                height: 30.0,
                color: index < _rating! ? Colors.blue : null,
              ),
              const SizedBox(width: 5),
            ],
          ),
        );
      }),
    );
  }
}
