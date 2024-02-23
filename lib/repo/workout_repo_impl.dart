import 'package:workout_tracker/data/workout_db.dart';
import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/model/workout.dart';
import 'package:workout_tracker/repo/workout_repo.dart';

class WorkoutRepoImpl implements WorkoutRepo {
  WorkoutDb workoutDb;
  WorkoutRepoImpl(this.workoutDb);


  @override
  List<WorkoutModel> getAllWorkouts() {
    return workoutDb.getAllWorkoutLists();
  }
  
  @override
  void addWorkout(String name, int time) {
    workoutDb.addWorkout(name, time);
  }
  
  @override
  void addExercise(String workoutName, ExerciseModel exerciseModel) {
    workoutDb.addExercise(workoutName, exerciseModel);
  }


  // overall list contains different workouts
  // each workout has a name and list of exercises
}
