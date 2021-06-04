import 'package:flutter/material.dart';

import 'package:flutter_vrouter_localization/widgets/bottom_navigation_bar.dart';

class AppScreen extends StatelessWidget {
  final Widget child;
  const AppScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: BottomBar(),
    );
  }
}
