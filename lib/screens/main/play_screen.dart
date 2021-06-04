import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text(
          'Play',
          style: TextStyle(
            fontSize: 80.0,
          ),
        ),
      ),
    );
  }
}
