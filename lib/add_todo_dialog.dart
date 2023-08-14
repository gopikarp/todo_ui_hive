import 'package:flutter/material.dart';

class AddTodoDialog extends StatelessWidget {
  final ValueChanged<String> onAddTodo;


 const AddTodoDialog({required this.onAddTodo});

  @override
  Widget build(BuildContext context) {
    String newTodo = '';

    return AlertDialog(
      title: Text('Add Todo'),
      content: TextField(
        onChanged: (value) {
          newTodo = value;
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            onAddTodo(newTodo);
          },
          child: Text('Add'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }
}
