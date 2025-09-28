import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/pages/pages.dart';
import 'package:mental_health_app/presentation/bottomnav/bloc/bottom_nav_cubit.dart';
import 'package:mental_health_app/presentation/bottomnav/main_wraper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: BlocProvider(
        create: (context) => BottomNavCubit(),
        child: MainWraper(),
      ),
    );
  }
}
