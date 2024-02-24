import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/vm/workout_vm.dart';
import 'package:workout_tracker/widgets/exercise_card.dart';

class ExerciseAddScreen extends StatelessWidget {
  final String workoutName;
  const ExerciseAddScreen({super.key, required this.workoutName});

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutViewModel>(builder: (context, value, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            workoutName,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            ListView.builder(
                itemCount: value.noOfExerciseInWorkout(workoutName),
                itemBuilder: (context, index) {
                  return ListTile(
                    title:
                        // getRelevent workout chai use garna paayena
                        Text(value.workoutList[index].exercises[index].ename),
                    subtitle: Row(
                      children: [
                        Chip(
                          label: Text(
                              "${value.workoutList[index].exercises[index].weight}kg"),
                        ),
                        Chip(
                          label: Text(
                              "${value.workoutList[index].exercises[index].reps}reps"),
                        ),
                        Chip(
                          label: Text(
                              "${value.workoutList[index].exercises[index].sets}sets"),
                        ),
                      ],
                    ),
                  );
                }),
            FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ExerciseCard(
                      WorkoutName: '',
                    );
                  },
                );
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      );
    });
  }
}
