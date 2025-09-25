import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Color color;
  final String text;
  final String discription;
  final String image;
  final IconData iconData;
  final String iconText;
  const TaskCard({
    super.key,
    required this.color,
    required this.text,
    required this.discription,
    required this.image,
    required this.iconData,
    required this.iconText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 380,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        children: [
          Text(text, style: Theme.of(context).textTheme.titleMedium),
          Row(
            children: [
              Expanded(
                child: Text(
                  discription,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              Image.asset(image, height: 80, width: 80),
            ],
          ),

          Row(
            children: [
              Text(iconText, style: Theme.of(context).textTheme.labelMedium),
              SizedBox(width: 3),
              Icon(iconData, color: Color.lerp(color, Colors.black, 0.3)),
            ],
          ),
        ],
      ),
    );
  }
}
