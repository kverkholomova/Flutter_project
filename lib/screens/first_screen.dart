import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/game_screen.dart';

class RotationTransitionPage extends StatefulWidget {
  const RotationTransitionPage({Key? key}) : super(key: key);

  @override
  _RotationTransitionPageState createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage>
// 2. add SingleTickerProviderStateMixin
    with SingleTickerProviderStateMixin {
  // 3. create the AnimationController
 /* late final _animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds:3),
  );

  @override
  void initState() {
    super.initState();
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    // 4. dispose the AnimationController when no longer needed
    _animationController.dispose();
    super.dispose();
  }*/

  Color _color=Colors.blueAccent;

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
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Center(
                    // 1. use an AnimatedBuilder
                    //child: AnimatedBuilder(
                      // 2. pass our AnimationController as the animation argument
                     // animation: _animationController,
                      // 3. pass the child widget that we will animate
                      child: Container(
                        width: 1000,
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
                      // 4. add a builder argument (this will be called when the animation value changes)
                      //builder: (context, child) {
                        // 5. use a Transform widget to apply a rotation
                      //  return Transform.rotate(
                          // 6. the angle is a function of the AnimationController's value
                        //  angle: 2.05 * pi * _animationController.value,
                         // child: child,
                     //   );
                      //},
                   // ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 80),
              child: AnimatedContainer(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: _color,
                ),
                duration: Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: ElevatedButton( onPressed: () {
                  setState(() {
                    final random=Random();
                    _color=Color.fromRGBO(
                        random.nextInt(256),
                        random.nextInt(256),
                        random.nextInt(256),
                    1);
                  });
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RotationTransitionPage()),
                );
                print('works');
                },
                    style: ElevatedButton.styleFrom(
                        //primary: Colors.blue,
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
      ),
    );
  }
}