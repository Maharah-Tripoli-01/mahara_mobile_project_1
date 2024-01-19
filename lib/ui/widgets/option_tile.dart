import 'package:flutter/material.dart';

class OptionsTile extends StatelessWidget {
  const OptionsTile({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.name,
    required this.icon,
    required this.onTap,
  });

  final Color? backgroundColor;
  final Color? iconColor;
  final IconData? icon;
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
              title: Text(name),
              trailing: const Icon(
                Icons.chevron_right,
              ),
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
