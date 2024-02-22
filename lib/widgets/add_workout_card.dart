import 'package:flutter/material.dart';
import 'package:workout_tracker/views/exercise_add_screen.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController workoutController = TextEditingController();
    return AlertDialog(
      content: Container(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black)),
                  labelText: 'Enter Workout name '),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    String labelText = workoutController.text;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ExerciseAddScreen(
                                title: labelText,
                              )),
                    );
                  },
                  child: const Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
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
}
