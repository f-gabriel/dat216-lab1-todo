
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lab1/model/task_handler.dart';
import 'package:provider/provider.dart';

class AddButton extends StatelessWidget {
  final VoidCallback? onPress; 
   

  const AddButton({super.key, required this.onPress}); 

  
  


  @override
  Widget build(BuildContext context){

    final FocusNode focusNode = FocusNode();
    

    return KeyboardListener(
      focusNode: focusNode, 
      autofocus: true,
      onKeyEvent: (event){
        if(event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.enter)
        {this.onPress?.call();
        debugPrint('is enter 2');
        }
      },
      child: FloatingActionButton(
        onPressed: this.onPress,
        tooltip: 'Done',
        child: const Icon(Icons.done),
      ), 
    );
  }
}