import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({super.key, required this.controller});

  final AnimationController controller;

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  int _percentage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() {
    _timer = Timer.periodic(const Duration(milliseconds: 40), (timer) {
      setState(() {
        _percentage += 2;
        if (_percentage > 100) {
          _percentage = 100;
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: widget.controller,
          builder: (context, child) {
            return CustomPaint(
              painter: _LoaderPainter(widget.controller.value),
              size: const Size(30.0, 30.0),
            );
          },
        ),
        const SizedBox(width: 8),
        Text(
          '$_percentage%',
          style: theme.displayMedium!.copyWith(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class _LoaderPainter extends CustomPainter {
  final double progress;

  _LoaderPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final double radius = size.width / 2;
    const double startAngle = -3 * 3.1415927 / 4;

    for (int i = 0; i < 8; i++) {
      double angle = startAngle + i * 3.1415927 / 4;
      double opacity = (i / 8.0 + progress) % 1.0;
      opacity = 0.5 + 0.5 * (1 - (opacity - 0.5).abs() * 2);
      paint.color = paint.color.withOpacity(opacity);

      canvas.drawLine(
        Offset(
          radius + radius * 0.6 * cos(angle),
          radius + radius * 0.6 * sin(angle),
        ),
        Offset(
          radius + radius * 0.9 * cos(angle),
          radius + radius * 0.9 * sin(angle),
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
