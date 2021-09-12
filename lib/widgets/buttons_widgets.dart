import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  final Function callbacks;
  const Buttons({Key? key, required this.text, required this.callbacks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(100, 50),
        primary: Colors.white10,
        onSurface: Colors.white10,
        shadowColor: Colors.white10,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 40,
          color: Colors.red,
        ),
      ),
      onPressed: () => callbacks(text),
    );
  }
}
