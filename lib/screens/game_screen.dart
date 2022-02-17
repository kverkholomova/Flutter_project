import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/appBar.dart';
import 'package:project_verkholomova/screens/main_screen.dart';
import 'package:project_verkholomova/screens/game_screen01.dart';


int point=0;
int number=1;

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
                        Text("What color is it?", style: TextStyle(color: Colors.green, fontSize: 40, fontFamily: 'Relay'),),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 300,left: 65),
                              child: MaterialButton(onPressed: () {
                                point+=10;
                                number++;
                                showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('You are right!'),
                                  content:  Text('Level ${number-1} passed'),
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
                                        MaterialPageRoute(builder: (context) => const GameScreen01()),
                                      );

                                      },

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
                                  MaterialPageRoute(builder: (context) =>  MyAppBar()),
                                );
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  const GameScreen()),
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



