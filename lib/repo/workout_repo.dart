import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/model/workout.dart';

abstract class WorkoutRepo {
  List<WorkoutModel> getAllWorkoutLists();
  int noOfExerciseInWorkout(String workoutName);
  void addWorkout(String name);
  void addExercise(String workoutName, String exerciseName, String weight, String reps, String sets);
  void checkOffExercise(String workoutName, String exerciseName);
  WorkoutModel getReleventWorkout(String workoutName);
  ExerciseModel getReleventExercise(String workoutName, String exerciseName);
}
