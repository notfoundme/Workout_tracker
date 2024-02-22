import 'package:flutter/material.dart';
import 'package:workout_tracker/views/workout_add_screen.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: WorkoutAddScreen(),
    );
  }
}
