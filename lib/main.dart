import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 57, 126, 255),
              ],
              begin: Alignment.topLeft,
            ),
          ),
          child: const Center(
            child: Text('헬로 하이sd!!💔'),
          ),
        ),
      ),
    ),
  );
}
