import 'package:flutter/material.dart';

class FeelingCard extends StatelessWidget {
  final String image;
  final Color color;
  final String label;
  const FeelingCard({
    super.key,
    required this.image,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(image, height: 25),
        ),
        Text(label, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}
