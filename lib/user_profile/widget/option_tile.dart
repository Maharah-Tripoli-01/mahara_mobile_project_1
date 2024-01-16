import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  const OptionTile({
    super.key,
    required this.icon,
    required this.colorIcon,
    required this.name,
    required this.backgroundColorIcon,
  });

  final String name;
  final IconData icon;
  final Color colorIcon;
  final Color backgroundColorIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColorIcon,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(8),
            child: Icon(
              icon,
              color: colorIcon,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          )
        ],
      ),
    );
  }
}
