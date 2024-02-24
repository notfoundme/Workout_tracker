import 'package:workout_tracker/data/workout_db.dart';
import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/model/workout.dart';

class WorkoutDbImpl implements WorkoutDb {
  List<WorkoutModel> workoutList = [
    WorkoutModel(
      name: "Upper body",
      // reminderTime: DateTime.now().millisecondsSinceEpoch,
      exercises: [
        ExerciseModel(
          ename: "Bicep Curls",
          reps: '10',
          sets: "3",
          weight: "10",
        ),
      ],
    ),
  ];

 

  @override
  List<WorkoutModel> getAllWorkoutLists() {
    return workoutList;
  }

  //get length of given workout
  @override
  int noOfExerciseInWorkout(String workoutName) {
    WorkoutModel releventWorkout = getReleventWorkout(workoutName);
    return releventWorkout.exercises.length;
  }

  @override
  void addWorkout(
    String name,
  ) {
    workoutList.add(WorkoutModel(
      name: name,
      exercises: [], /*reminderTime: time*/
    ));
  }

  // add an exercise inside the workout
  @override
  void addExercise(String workoutName, String exerciseName, String weight,
      String reps, String sets) {
    // find the relevent workout for this exercise
    WorkoutModel relevantWorkout = getReleventWorkout(workoutName);

    relevantWorkout.exercises.add(ExerciseModel(
        ename: exerciseName, reps: reps, sets: sets, weight: weight));
  }

  @override
  void checkOffExercise(String workoutName, String exerciseName) {
    // find the same workout and same exercise inside that workout
    ExerciseModel releventExercise =
        getReleventExercise(workoutName, exerciseName);
        releventExercise.isCompleted = !releventExercise.isCompleted;

  }

  @override
  //return relevent workout object, given a workout name
  WorkoutModel getReleventWorkout(String workoutName) {
    WorkoutModel relevantWorkout =
        workoutList.firstWhere((workout) => workout.name == workoutName);
    return relevantWorkout;
  }

  @override
  ExerciseModel getReleventExercise(String workoutName, String exerciseName) {
    //1. get that same  workout name
    WorkoutModel releventWorkout = getReleventWorkout(workoutName);

    //2. get that same exercise name : tei workout ko
    ExerciseModel releventExercise = releventWorkout.exercises
        .firstWhere((exercise) => exercise.ename == exerciseName);
    return releventExercise;
  }
}
