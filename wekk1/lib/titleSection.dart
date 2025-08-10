import 'package:flutter/material.dart';

class titleSection extends StatelessWidget {
  const titleSection({
    super.key,
    required this.name,
    required this.location,
    required this.rating,
  });

  final String name;
  final String location;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          Text('$rating'),
        ],
      ),
    );
  }
}
