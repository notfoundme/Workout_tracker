import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/vm/workout_vm.dart';

class ExerciseCard extends StatefulWidget {
  final String WorkoutName;
  const ExerciseCard({
    Key? key,
    required this.WorkoutName,
  }) : super(key: key);

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  TextEditingController exerciseNameController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController repsController = TextEditingController();
  TextEditingController setsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            textFormField(label: 'Name of Exercise'),
            textFormField(label: 'Weight'),
            textFormField(label: 'Reps'),
            textFormField(label: 'Sets'),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    String exerciseName = exerciseNameController.text;
                    String reps = repsController.text;
                    String sets = setsController.text;
                    String weight = weightController.text;
                    final vm1 = Provider.of<WorkoutViewModel>(context);
                    vm1.addExercise(
                        workoutName, exerciseName, weight, reps, sets);

                    Navigator.pop(context);
                  },
                  child: const Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget textFormField({required String label}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          labelText: 'Enter $label',
        ),
      ),
    );
  }

  void save() {}
}
