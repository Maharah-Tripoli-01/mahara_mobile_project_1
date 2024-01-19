import 'package:flutter/material.dart';
import 'package:maharah_project/router_app.dart';
import '../../widgets/option_tile.dart';
import 'sing_out_bottom.dart';

class BottomSectionName extends StatelessWidget {
  const BottomSectionName({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final route = Navigator.of(context);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 24,
          ),
          OptionsTile(
            backgroundColor: Colors.pinkAccent.withOpacity(0.2),
            iconColor: Colors.pinkAccent,
            icon: Icons.account_circle,
            name: "Edit profile",
            onTap: () {
              route.pushNamed(
                RouteGenerator.editProfileNameScreen,
              );
            },
          ),
          OptionsTile(
            backgroundColor: Colors.greenAccent.withOpacity(0.2),
            iconColor: Colors.greenAccent,
            icon: Icons.query_stats,
            name: "My stats",
            onTap: () {},
          ),
          OptionsTile(
            backgroundColor: Colors.deepPurpleAccent.withOpacity(0.2),
            iconColor: Colors.deepPurpleAccent,
            icon: Icons.settings,
            name: "Settings",
            onTap: () {},
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            endIndent: 24,
            indent: 24,
            color: Colors.grey.withOpacity(0.2),
            height: 1,
          ),
          const SizedBox(
            height: 8,
          ),
          OptionsTile(
            backgroundColor: theme.indicatorColor,
            iconColor: Colors.black54,
            icon: Icons.insert_invitation,
            name: "Invite friend",
            onTap: () {},
          ),
          OptionsTile(
            backgroundColor: theme.indicatorColor,
            iconColor: Colors.black54,
            icon: Icons.help,
            name: "Help",
            onTap: () {},
          ),
          const SizedBox(
            height: 28,
          ),
          const SignOutBottom(),
        ],
      ),
    );
  }
}
