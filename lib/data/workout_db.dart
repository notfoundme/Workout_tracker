import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/model/workout.dart';

abstract class WorkoutDb {
  //get the list of workouts
  List<WorkoutModel> getAllWorkoutLists();
  //add a workout
  void addWorkout(String name, int time);
  //add exercise inside that workout
  void addExercise(String workoutName, ExerciseModel exerciseModel);

//check off exercise
// kun workout ko kun exercise check garne thapauna lai
  void checkOffExercise(String workoutName, String exerciseName);

  WorkoutModel getReleventWorkout(String workoutName);
  ExerciseModel getReleventExercise(String workoutName, String exerciseName);
}
