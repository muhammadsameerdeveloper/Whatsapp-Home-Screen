import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton.small(
          onPressed: () {},
          child: const Icon(Icons.auto_awesome),
        ),
        SizedBox(height: 16),
        FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      ],
    );
  }
}
