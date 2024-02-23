import 'package:hive/hive.dart';
part 'exercise.g.dart';


@HiveType(typeId: 1)
class ExerciseModel {
@HiveField(0)
  final String ename;
@HiveField(1)
  final String weight;
@HiveField(2)
  final String sets;
  @HiveField(3)
  final String reps;
  bool isCompleted;

  ExerciseModel(
      {this.isCompleted = false,
      required this.ename,
      required this.reps,
      required this.sets,
      required this.weight});
}
