import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  Field({Key? key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color(0xffc3efbb),
      ),
      child: TextField(
        cursorColor: const Color(0xff339423),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          hintStyle: const TextStyle(color: Color(0xff85a47f)),
        ),
      ),
    );
  }
}
