import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/common/feeling_card.dart';
import 'package:mental_health_app/features/meditation/presentation/common/task_card.dart';
import 'package:mental_health_app/features/meditation/presentation/widgets/feeling_section.dart';
import 'package:mental_health_app/features/meditation/presentation/widgets/task_section.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset('assets/images/hamburger.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Text(
                'Welcome back, Sarina!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 32),
              Text(
                'How are you feeling today ?',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 30),
              //card
              FeelingSection(),
              SizedBox(height: 30),
              Text(
                'Today’s Task',
                style: Theme.of(context).textTheme.titleMedium,
              ),

              //task card
              TaskSection(),
            ],
          ),
        ),
      ),
    );
  }
}
