import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/vm/workout_vm.dart';
import 'package:workout_tracker/widgets/add_workout_card.dart';

class WorkoutAddScreen extends StatelessWidget {
  WorkoutAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WorkoutViewModel>(context);

    return Consumer<WorkoutViewModel>(builder: (context, value, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Workout Tracker"),
        ),
        body: Column(
          children: [
            ListView.builder(
                itemCount: vm.workoutList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(vm.workoutList[index].name),
                  );
                }),
            FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialog();
                  },
                );
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      );
    });
  }
}
