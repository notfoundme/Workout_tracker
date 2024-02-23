import 'package:workout_tracker/model/exercise.dart';
import 'package:hive/hive.dart';
part 'workout.g.dart';


@HiveType(typeId: 0)
class WorkoutModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int reminderTime;
  @HiveField(2)
  List<ExerciseModel> exercises = [];

  WorkoutModel(
      {required this.reminderTime,
      required this.name,
      required this.exercises});
}
