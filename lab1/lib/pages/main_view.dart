import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Things todo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary
      ),
      body: ListView(
          children: [
            Text('DAT216/TIG091'),
            Text('Lab1 Todos'),
            Text('en rad till')
          ],
        ),
      );
  }
}
