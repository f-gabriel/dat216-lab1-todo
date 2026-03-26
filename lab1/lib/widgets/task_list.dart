import 'package:flutter/material.dart';

class TaskList extends StatelessWidget{
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(title: Text('DAT216')),
        ListTile(title: Text('Lab 1')),
        ListTile(title: Text('En till rad'))
      ],
    ); 
  }
  
}