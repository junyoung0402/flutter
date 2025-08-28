import 'package:flutter/material.dart';

class Socialloginbutton extends StatelessWidget {
  final Image iconimage;
  final String text;
  final Color backgroundcolor;
  final Color textcolor;

  const Socialloginbutton({
    super.key,
    required this.iconimage,
    required this.text,
    required this.backgroundcolor,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor,
        maximumSize: const Size(380, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconimage,
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
