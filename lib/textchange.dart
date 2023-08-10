import 'package:flutter/material.dart';

class Change extends StatelessWidget {
  final String mainText;
  final VoidCallback change;
  const Change({super.key, required this.mainText, required this.change});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: ElevatedButton(
            onPressed: change,
            child: const Text('Change Text'),
          ),
        ),
        Text(mainText),
      ],
    );
  }
}
