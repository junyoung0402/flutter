import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.call, color: Colors.purple[500], size: 30),
              ),
              Text('CALL'),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(
                  Icons.directions,
                  color: Colors.purple[500],
                  size: 30,
                ),
              ),
              Text('ROUTE'),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.share, color: Colors.purple[500], size: 30),
              ),
              Text('SHARE'),
            ],
          ),
        ],
      ),
    );
  }
}
