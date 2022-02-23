import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/first_screen.dart';

import 'game_screen.dart';
import 'game_screen01.dart';
import 'game_screen02.dart';
import 'game_screen03.dart';
import 'game_screen04.dart';

int running_number=1;


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Column(
          children: [

              Padding(
                padding: const EdgeInsets.only(left: 240,top: 20),
                child: Text('Points: $point',style: TextStyle(color: Colors.black87, fontSize: 20, fontFamily: 'Relay')),
              ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: Center(
                    child: Container(
                      width: 1400,
                      height: 350,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                           image: NetworkImage("https://img.freepik.com/darmowe-wektory/quiz-w-komiksowym-stylu-pop-art_175838-505.jpg?size=626&ext=jpg"),
                           fit:BoxFit.fill
                        ),
                        border: Border.all(color: Colors.lightBlueAccent,width: 7)
                      ),
                    ),
                  ),
                ),
                /*const Padding(padding: EdgeInsets.only(top: 10),
                  child: Text("Play game!",style: TextStyle(color: Colors.blue,fontSize: 40, fontFamily: 'DancingScript')),
                ),*/

                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: SizedBox(
                    width: 200,
                    height: 70,
                    child: ElevatedButton( onPressed: () {

                      if(currentLevel==1){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GameScreen()),
                        );
                      }
                      else if(currentLevel==2){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GameScreen01()),
                        );
                      }
                      else if(currentLevel==3){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GameScreen02()),
                        );
                      }
                      else if(currentLevel==4){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GameScreen03()),
                        );
                      }
                      else if(currentLevel==5){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GameScreen04()),
                        );
                      }
                      else if(currentLevel==6){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RotationTransitionPage()),
                        );
                      }



                    print('works');
                    },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[400],
                          shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.white, width: 1)
                              )

                        ),
                    child: Icon(Icons.arrow_right,size: 60)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}
