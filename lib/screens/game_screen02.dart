import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/appBar.dart';
import 'package:project_verkholomova/screens/main_screen.dart';
import 'package:project_verkholomova/screens/game_screen.dart';
import 'package:project_verkholomova/screens/game_screen03.dart';
import 'dart:async';

class GameScreen02 extends StatefulWidget {
  const GameScreen02({Key? key}) : super(key: key);

  @override
  State<GameScreen02> createState() => _GameScreen02State();
}
class _GameScreen02State extends State<GameScreen02> {

  void run(){
    print("Game2");
    print("$running_number");
    if(running_number==3){
      running_number++;
    }
  }

  void showAlert(){
    final DateTime now=DateTime.now();
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
                  MaterialPageRoute(builder: (context) => const GameScreen02()),
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

    if(running_number==3){
      run();
      Timer.periodic(Duration(seconds: 15),(Timer timer){

        if(running_number!=4){
          timer.cancel();
        }
        if(running_number==4){
          showAlert();

          timer.cancel();
        }

      });
      super.initState();
    }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child:
            Center(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Column(
                        children:[
                          Text("Choose a color which is used for the word", style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Relay')),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text("Blue", style: TextStyle(color: Colors.yellow, fontSize: 40, fontFamily: 'Relay'),),
                          ),
                          Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 300,left:20),
                                child: MaterialButton(onPressed: () {
                                  count--;
                                  changeVisibility(count);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  MyAppBar()),
                                  );
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  const GameScreen02()),
                                  );
                                  print("hidden");

                                  if(count==0){
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: const Text('You should try once more!'),
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
                                                MaterialPageRoute(builder: (context) => const GameScreen02()),
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
                                  }
                                }, child: Text("Red",style: TextStyle(color: Colors.yellow, fontSize: 30, fontFamily: 'Relay'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 300,left: 20),
                                child: MaterialButton(onPressed: () {
                                  point+=10;
                                  number++;
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('You are right!'),
                                      content: Text('Level ${number-1} passed'),
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

                                            count=3;
                                            isvisible=true;
                                            isvisible1=true;
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const GameScreen03()),
                                            );

                                          },

                                          child: const Text('Next level'),
                                        ),
                                      ],
                                    ),
                                  );
                                }, child: Text("Yellow",style: TextStyle(color: Colors.green, fontSize: 30, fontFamily: 'Relay'))),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 300,left:20),
                                child: MaterialButton(onPressed: () {
                                  count--;
                                  changeVisibility(count);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  MyAppBar()),
                                  );
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  const GameScreen02()),
                                  );
                                  print("hidden");

                                  if(count==0){
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: const Text('You should try once more!'),
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
                                                MaterialPageRoute(builder: (context) => const GameScreen02()),
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
                                  }
                                }, child: Text("Blue",style: TextStyle(color: Colors.purple, fontSize: 30, fontFamily: 'Relay'))),
                              ),
                            ],
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }}