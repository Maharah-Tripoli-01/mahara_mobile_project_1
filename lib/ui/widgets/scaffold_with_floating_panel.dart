import 'package:flutter/material.dart';

class ScaffoldWithFloatingPanel extends StatelessWidget {
  const ScaffoldWithFloatingPanel({
    required this.body,
    this.panel,
    this.appBar,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  final Widget body;
  final Widget? panel;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned.fill(child: body),
          if (panel != null)
            Positioned(
              bottom: 0,
              top: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.zero,
                child: panel,
              ),
            ),
        ],
      ),
    );
  }
}
