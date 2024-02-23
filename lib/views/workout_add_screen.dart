import 'package:flutter/material.dart';
import 'package:workout_tracker/widgets/add_workout_card.dart';

class WorkoutAddScreen extends StatelessWidget {
  WorkoutAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                
                context: context,
                builder: (BuildContext context) {
                  return CustomDialog();
                },
              );
            },
            child: Text('Add new Workout'),
          ),
        ),
      ),
    );
  }
}
