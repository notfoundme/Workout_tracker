// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/data/workout_db_impl.dart';
import 'package:workout_tracker/repo/workout_repo.dart';
import 'package:workout_tracker/repo/workout_repo_impl.dart';
import 'package:workout_tracker/views/workout_add_screen.dart';
import 'package:workout_tracker/vm/workout_vm.dart';

class BaseApp extends StatelessWidget {
  WorkoutRepo repo = WorkoutRepoImpl(WorkoutDbImpl());
  BaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutViewModel(repo),
      child: MaterialApp(
        home: WorkoutAddScreen(),
      ),
    );
  }
}
