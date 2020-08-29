//INFO: Main Screen
import 'package:flutter/material.dart';
import 'custom_theme.dart';
import 'home_screen.dart';

class Twittr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'maksdas ',
      theme: CustomTheme.of(context),
      home: HomeScreen(),
    );
  }
}