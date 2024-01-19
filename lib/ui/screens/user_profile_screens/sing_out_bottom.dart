import 'package:flutter/material.dart';

class SignOutBottom extends StatelessWidget {
  const SignOutBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: SizedBox(
        width: 106,
        height: 36,
        child: ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                final theme = Theme.of(context);
                return AlertDialog(
                  title: const Text("Example"),
                  content: const Text("Do you logout?"),
                  actions: [
                    TextButton(
                      child: Text(
                        "no",
                        style: theme.textTheme.bodyLarge,
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text(
                        "yes",
                        style: theme.textTheme.bodyLarge,
                      ),
                      onPressed: () {},
                    )
                  ],
                );
              },
            );
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Set the border radius here
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
            elevation: MaterialStateProperty.all(0),
          ),
          child: Text(
            "Sign Out",
            style: TextStyle(color: theme.colorScheme.secondary),
          ),
        ),
      ),
    );
  }
}
