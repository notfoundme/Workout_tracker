import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/views/exercise_add_screen.dart';
import 'package:workout_tracker/vm/workout_vm.dart';

class CustomDialog extends StatefulWidget {
  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  TextEditingController workoutController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: 'Enter Workout name '),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    save();
                    Navigator.pop(context);
                    workoutController.clear();
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

  void save() {
    //textController bata nam liyo
    String labelText = workoutController.text;
    final vm1 = Provider.of<WorkoutViewModel>(context);
    vm1.addWorkout(labelText);
  }
}

//Navigator.pushReplacement(
//   context,
//   MaterialPageRoute(
//       builder: (_) => ExerciseAddScreen(
//             title: labelText,
//           )),
// );
