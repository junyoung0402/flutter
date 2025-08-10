import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Todo());
  }
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.list)),
            title: Text('과제'),
            subtitle: Text('장바구니'),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          );
        },
        itemCount: 8,
      ),
    );
  }
}
