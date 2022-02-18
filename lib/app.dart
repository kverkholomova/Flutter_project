
import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/main_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'App',

      home: const MainScreen(),
    );
  }
}