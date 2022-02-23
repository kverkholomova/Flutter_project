
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/game_screen.dart';
import 'package:project_verkholomova/screens/main_screen.dart';
import 'package:project_verkholomova/screens/game_screen01.dart';
import 'package:project_verkholomova/screens/game_screen02.dart';
import 'package:project_verkholomova/screens/game_screen03.dart';
import 'package:project_verkholomova/screens/game_screen04.dart';


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
          title: const Text('Time is over!', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'Relay')),
          content:
          Container(
              width: 260.0,
              height: 200.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xFFFFFF),
                borderRadius: new BorderRadius.all(Radius.circular(32.0)),
              ),
              child: Column(
                children: [
                  const SizedBox(
                      width:150,
                      height: 150,
                      child: Image(image: NetworkImage("https://previews.123rf.com/images/juliaivanova/juliaivanova1404/juliaivanova140400010/27703031-gemalt-gl%C3%BCcklich-wecker-klingelt.jpg"))),
                  Text('Level $number is not passed',textAlign: TextAlign.center,style: const TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Relay')),
                ],
              )),

          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                ),
                child: const Text('Get back to menu',style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Relay')),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: TextButton(
                onPressed: () {
                  if(className1=='1'){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GameScreen()),
                    );
                    count=3;
                    isvisible=true;
                    isvisible1=true;
                  }
                  else if(className2=='2'){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GameScreen01()),
                    );
                    count=3;
                    isvisible=true;
                    isvisible1=true;
                  }

                  else if(className3=='3'){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GameScreen02()),
                    );
                    count=3;
                    isvisible=true;
                    isvisible1=true;
                  }

                  else if(className4=='4'){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GameScreen03()),
                    );
                    count=3;
                    isvisible=true;
                    isvisible1=true;
                  }

                  else if(className5=='5'){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GameScreen04()),
                    );
                    count=3;
                    isvisible=true;
                    isvisible1=true;
                  }



                },
                child: const Text('Try again', style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Relay')),
              ),
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
      duration: const Duration(seconds: 7),
    );

    controller.addStatusListener((AnimationStatus status) {
      if(status==AnimationStatus.completed){
        if(show==1){
          Alert();
        }
        else if(show==2){
          Alert();
        }
        else if(show==3){
          Alert();
        }
        else if(show==4){
          Alert();
        }
        else if(show==5){
          Alert();
        }


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
            color: Colors.blue[400],
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
