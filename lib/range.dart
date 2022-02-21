
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/game_screen.dart';
import 'package:project_verkholomova/screens/main_screen.dart';


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
late AnimationController controller;
/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {

  void Alert() {

    setState(() {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Time is over!'),
          content: Text('Level $number is not passed'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              ),
              child: const Text('Get back to menu'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GameScreen()),
                );
                count=3;
                isvisible=true;
                isvisible1=true;
              },
              child: const Text('Try again'),
            ),
          ],
        ),
      );
    });

  }



  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    );

    controller.addStatusListener((AnimationStatus status) {
      if(status==AnimationStatus.completed){
        Alert();
        print("completed");
      }
    });
      controller.addListener(() {
      setState(() {
      });
      });
    controller.repeat(reverse: false);
    controller.forward();
    super.initState();

  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: LinearProgressIndicator(
            color: Colors.deepPurple,
            backgroundColor: Colors.black12,
            value: controller.value,
            minHeight: 10,
            semanticsLabel: 'Linear progress indicator',

          ),
        ),
      ),
    );
  }
}
