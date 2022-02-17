import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/main_screen.dart';
import 'package:project_verkholomova/screens/init_screen.dart';

int point=0;


int count=3;
bool isvisible1=true;
bool isvisible2=true;
bool isvisible=true;


void changeVisibility(int c){
  if(c==2){
    isvisible=false;
    isvisible1=true;
    isvisible2=true;
  }
  else if(c==1){
    isvisible1=false;
    isvisible=false;
    isvisible2=true;
  }

}

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}
class _GameScreenState extends State<GameScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Text("What color is it?", style: TextStyle(color: Colors.green, fontSize: 40, fontFamily: 'Relay'),),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 300,left: 65),
                              child: MaterialButton(onPressed: () {
                                point++;
                                showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('You are right!'),
                                  content: const Text('Level 1 passed'),
                                  actions: <Widget>[
                                    TextButton(
                                    onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const MainScreen()),
                                ),
                                      child: const Text('Get back to menu'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const GameScreen01()),
                                      ),
                                      child: const Text('Next level'),
                                    ),
                                  ],
                                ),
                              );
                              }, child: Text("Green",style: TextStyle(color: Colors.red, fontSize: 30, fontFamily: 'Relay'))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 300,left:65, right: 65),
                              child: MaterialButton(onPressed: () {
                                count--;
                                changeVisibility(count);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const InitScreen()),
                                );
                                print("hidden");

                                if(count==0){
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('You should try once more!'),
                                      content: const Text('Level 1 is not passed'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const MainScreen()),
                                          ),
                                          child: const Text('Get back to menu'),
                                        ),
                                        TextButton(
                                          onPressed: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const GameScreen()),
                                          );
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const InitScreen()),
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
                              }, child: Text("Red",style: TextStyle(color: Colors.green, fontSize: 30, fontFamily: 'Relay'))),
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



class GameScreen01 extends StatefulWidget {
  const GameScreen01({Key? key}) : super(key: key);

  @override
  State<GameScreen01> createState() => _GameScreen01State();
}
class _GameScreen01State extends State<GameScreen01> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          Text("Choose the color which is used for the word", style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'Relay'),),
                          Text("Brown", style: TextStyle(color: Colors.purple, fontSize: 40, fontFamily: 'Relay'),),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 300,left: 20),
                                child: MaterialButton(onPressed: () {
                                  point++;
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('You are right!'),
                                      content: const Text('Level 1 passed'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const MainScreen()),
                                          ),
                                          child: const Text('Get back to menu'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(context, 'OK'),
                                          child: const Text('Next level'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                    child: Text("Green",style: TextStyle(color: Colors.brown, fontSize: 30, fontFamily: 'Relay'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 300,left: 20),
                                child: MaterialButton(onPressed: () {
                                  point++;
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('You are right!'),
                                      content: const Text('Level 1 passed'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const MainScreen()),
                                          ),
                                          child: const Text('Get back to menu'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(context, 'OK'),
                                          child: const Text('Next level'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                    child: Text("Purple",style: TextStyle(color: Colors.red, fontSize: 30, fontFamily: 'Relay'))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 300,left:20),
                                child: MaterialButton(onPressed: () {
                                  count--;
                                  changeVisibility(count);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const InitScreen()),
                                  );
                                  print("hidden");

                                  if(count==0){
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: const Text('You should try once more!'),
                                        content: const Text('Level 1 is not passed'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const MainScreen()),
                                            ),
                                            child: const Text('Get back to menu'),
                                          ),
                                          TextButton(
                                            onPressed: () { Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const GameScreen()),
                                            );
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const InitScreen()),
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
                                }, child: Text("Red",style: TextStyle(color: Colors.purple, fontSize: 30, fontFamily: 'Relay'))),
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