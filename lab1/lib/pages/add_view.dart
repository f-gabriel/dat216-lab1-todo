import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/model/task_handler.dart';
import 'package:lab1/widgets/add_button.dart';
import 'package:provider/provider.dart';


class AddView extends StatelessWidget{
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    final FocusNode _focusNode = FocusNode();
    var taskHandler =  Provider.of<TaskHandler>(context, listen: false);  
    String taskTitle = ' ';

    void addTaskEvent(){
      taskHandler.addTask(taskTitle);
      Navigator.pop(context);
    }

    return KeyboardListener(
      focusNode: _focusNode, 
      autofocus: true,
      onKeyEvent: (event){
        if(event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.enter){
          addTaskEvent();
        }},
      child: Scaffold(
      appBar: AppBar(
        title: const Text('Add todo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          onChanged: (value) {taskTitle = value;},
          decoration: InputDecoration(
            labelText: 'What todo',
          ), 
        ), 
      ), 
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTaskEvent();
          },
         tooltip: 'Done',
         child: const Icon(Icons.done),
        ) 
      )
    );    
  }
}