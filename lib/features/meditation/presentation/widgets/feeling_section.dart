import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/common/feeling_card.dart';

class FeelingSection extends StatelessWidget {
  const FeelingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FeelingCard(
          image: 'assets/images/happy.png',
          color: DefaultColors.pink,
          label: 'Happy',
        ),
        FeelingCard(
          image: 'assets/images/calm.png',
          color: DefaultColors.purple,
          label: 'Calm',
        ),
        FeelingCard(
          image: 'assets/images/relax.png',
          color: DefaultColors.orange,
          label: 'Relax',
        ),
        FeelingCard(
          image: 'assets/images/focus.png',
          color: DefaultColors.lightteal,
          label: 'Focus',
        ),
      ],
    );
  }
}
