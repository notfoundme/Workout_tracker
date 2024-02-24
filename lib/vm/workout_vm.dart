import 'package:flutter/material.dart';
import 'package:workout_tracker/model/workout.dart';
import 'package:workout_tracker/repo/workout_repo.dart';

class WorkoutViewModel with ChangeNotifier {
  final WorkoutRepo repo;
  WorkoutViewModel(this.repo);

  List<WorkoutModel> get workoutList {
    return repo.getAllWorkoutLists();
  }

  int noOfExerciseInWorkout(String workoutName) {
    return repo.noOfExerciseInWorkout(workoutName);
  }

  void addWorkout(String name) {
    repo.addWorkout(name);
    notifyListeners();
  }

  void addExercise(String workoutName, String exerciseName, String weight,
      String reps, String sets) {
    repo.addExercise(workoutName, exerciseName, weight, reps, sets);
    notifyListeners();
  }

  void checkOffExercise(String workoutName, String exerciseName) {
    repo.checkOffExercise(workoutName, exerciseName);
    notifyListeners();
  }
}
