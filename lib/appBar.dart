import 'package:flutter/material.dart';

class NewAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const NewAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(text, style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400
      ),)),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
