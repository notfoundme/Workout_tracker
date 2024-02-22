import 'package:flutter/material.dart';
import 'package:workout_tracker/widgets/exercise_card.dart';

class ExerciseAddScreen extends StatelessWidget {
  final String title;
  const ExerciseAddScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return ExerciseCard();
              },
            );
          },
          child: Text('Add new Exercise'),
        ),
      ),
    );
  }
}
