import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/model/workout.dart';

abstract class WorkoutDb {
  //get the list of workouts
  List<WorkoutModel> getAllWorkoutLists();
  int noOfExerciseInWorkout(String workoutName);

  //add a workout
  void addWorkout(String name);
  //add exercise inside that workout
  void addExercise(String workoutName, String exerciseName, String weight,
      String reps, String sets);

//check off exercise
// kun workout ko kun exercise check garne thapauna lai
  void checkOffExercise(String workoutName, String exerciseName);

//aru funn lai sajilo banauna matra
  WorkoutModel getReleventWorkout(String workoutName);
  ExerciseModel getReleventExercise(String workoutName, String exerciseName);
}
