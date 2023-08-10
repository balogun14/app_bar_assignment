import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final VoidCallback reset;
  const Reset({super.key, required this.reset});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You\'ve reached the end ',
            style:  TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: reset,
            child: const Text('Reset!'),
          ),
        ],
      ),
    );
  }
}
