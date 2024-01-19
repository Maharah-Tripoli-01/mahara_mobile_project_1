import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileNameScreen extends StatelessWidget {
  const EditProfileNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textEditController,
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: const TextStyle(
                  color: Colors.blue, // Label color
                ),
                hintText: 'Enter your name',
                hintStyle: TextStyle(
                  color: Colors.blue.shade200, // Hint text color
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.blue, // Border color
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color:
                        Colors.blue, // Border color when TextField is enabled
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Colors.blue
                        .shade700, // Border color when TextField is focused
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.blue, // Icon color
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}


