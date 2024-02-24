import 'package:flutter/material.dart';
import 'package:workout_tracker/model/workout.dart';
import 'package:workout_tracker/base_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive/hive.dart';

Future<void> main() async {
  await Hive.initFlutter();

  // adapter register
  // Hive.registerAdapter(WorkoutModelAdapter());

  await Hive.openBox<WorkoutModel>("workoutDb");

  runApp( BaseApp());
}
