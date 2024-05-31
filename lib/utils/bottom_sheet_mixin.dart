import 'package:flutter/material.dart';

mixin BottomModalMixin {
  void showBottomModalSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('Edit statistic'),
              const SizedBox(height: 20),
              const Text('Edit statistic'),
              const SizedBox(height: 20),
              const Text('Edit statistic'),
              const SizedBox(height: 20),
              const Text('Edit statistic'),
            ],
          ),
        );
      },
    );
  }
}
