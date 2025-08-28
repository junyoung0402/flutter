import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String text;
  final String textinfield;

  const Textfield({super.key, required this.text, required this.textinfield});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        Padding(padding: EdgeInsets.all(3)),
        SizedBox(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              hintText: textinfield,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
