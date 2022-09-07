import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: Center(
        child: Text(
          'Hello world',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
