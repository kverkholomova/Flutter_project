import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/game_screen.dart';
import 'package:project_verkholomova/screens/main_screen.dart';

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}
class _NotificationState extends State<Notification> {

  void run(){
    print("Game1");
    print("$running_number");

    running_number++;
  }

  void showAlert(){
    setState(() {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Time is over!'),
          content:  Text('Level $number is not passed'),
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
  void initState(){

    if(running_number==1){
      run();
      Timer.periodic(Duration(seconds: 20),(Timer timer){

        if(running_number!=2){
          timer.cancel();
        }
        if(running_number==2){
          showAlert();

          timer.cancel();
        }
      });
      super.initState();
    }}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnsupportedError;
  }

}



