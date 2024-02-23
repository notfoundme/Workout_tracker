import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/model/workout.dart';

abstract class WorkoutRepo {
  List<WorkoutModel> getAllWorkouts();
   void addWorkout(String name, int time);
  //add exercise inside that workout  
  void addExercise(String workoutName, ExerciseModel exerciseModel);

}
