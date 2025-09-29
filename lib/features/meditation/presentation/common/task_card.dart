import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Color color;
  final String text;
  final String discription;
  final Widget image;

  final Widget iconText;
  final Widget icon;
  const TaskCard({
    super.key,
    required this.color,
    required this.text,
    required this.discription,
    required this.image,
    required this.iconText,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(16),
      width: screenWidth * 0.90,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          //discription and image
          Row(
            children: [
              Expanded(
                child: Text(
                  discription,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              SizedBox(width: 10),
              image,
            ],
          ),
          SizedBox(height: 8),
          Row(children: [iconText, SizedBox(width: 10), icon]),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
