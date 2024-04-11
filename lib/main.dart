import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/view/left/profile.dart';
import 'package:portfolio/view/right/contents.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ProviderScope(child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Row(
          children: [
            Profile(width: width, height: height),
            Contents(width: width, height: height),
          ],
        ),
      ),
    );
  }
}
