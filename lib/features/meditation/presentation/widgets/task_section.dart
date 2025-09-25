import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/common/task_card.dart';

class TaskSection extends StatelessWidget {
  const TaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        TaskCard(
          color: DefaultColors.task1,
          text: 'Peer Group Meetup',
          discription:
              'Let’s open up to the  thing that matters amoung the people ',

          image: Image.asset(
            'assets/images/task1.png',
            width: 80,
            fit: BoxFit.contain,
          ),

          icon: Icon(
            Icons.play_circle_fill_outlined,
            color: Color.fromARGB(255, 239, 93, 168),
          ),
          iconText: Text(
            'Join Now',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Color.fromARGB(255, 239, 93, 168),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 30),
        TaskCard(
          color: DefaultColors.task2,
          text: 'Meditation',
          discription:
              'Aura is the most important thing that matters to you.join us on ',
          image: Image.asset(
            'assets/images/task2.png',
            width: 80,
            fit: BoxFit.contain,
          ),
          icon: Icon(Icons.timelapse, color: Color.fromARGB(255, 240, 154, 89)),
          iconText: Text(
            '6:00PM',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Color.fromARGB(255, 240, 154, 89),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
