
import 'package:workout_tracker/data/workout_db_impl.dart';
import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/model/workout.dart';
import 'package:workout_tracker/repo/workout_repo.dart';

class WorkoutRepoImpl implements WorkoutRepo {
  final WorkoutDbImpl workoutDb;

  WorkoutRepoImpl(this.workoutDb);

  @override
  List<WorkoutModel> getAllWorkoutLists() {
    return workoutDb.getAllWorkoutLists();
  }

  @override
  int noOfExerciseInWorkout(String workoutName) {
    return workoutDb.noOfExerciseInWorkout(workoutName);
  }

  @override
  void addWorkout(String name) {
    workoutDb.addWorkout(name);
  }

  @override
  void addExercise(String workoutName, String exerciseName, String weight, String reps, String sets) {
    workoutDb.addExercise(workoutName, exerciseName, weight, reps, sets);
  }

  @override
  void checkOffExercise(String workoutName, String exerciseName) {
    workoutDb.checkOffExercise(workoutName, exerciseName);
  }

  @override
  WorkoutModel getReleventWorkout(String workoutName) {
    return workoutDb.getReleventWorkout(workoutName);
  }

  @override
  ExerciseModel getReleventExercise(String workoutName, String exerciseName) {
    return workoutDb.getReleventExercise(workoutName, exerciseName);
  }
}
