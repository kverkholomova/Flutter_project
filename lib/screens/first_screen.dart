import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/game_screen.dart';

import 'main_screen.dart';

class RotationTransitionPage extends StatefulWidget {
  const RotationTransitionPage({Key? key}) : super(key: key);

  @override
  _RotationTransitionPageState createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage>
// 2. add SingleTickerProviderStateMixin
    with SingleTickerProviderStateMixin {
  // 3. create the AnimationController
  late final _animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds:5),
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
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Text("We are still working on updates...", textAlign: TextAlign.center,style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'Relay')),
            
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90.0),
                  child: Center(
                    // 1. use an AnimatedBuilder
                    child: AnimatedBuilder(
                      // 2. pass our AnimationController as the animation argument
                      animation: _animationController,
                      // 3. pass the child widget that we will animate
                      child: Container(
                        width: 1000,
                        height: 350,
                        decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                image: NetworkImage("https://png.pngtree.com/png-clipart/20210627/original/pngtree-wait-text-pop-comic-style-png-image_6472448.jpg"),
                                fit:BoxFit.fill
                            ),
                            border: Border.all(color: Colors.white,width: 7)
                        ),
                      ),
                      // 4. add a builder argument (this will be called when the animation value changes)
                      builder: (context, child) {
                        // 5. use a Transform widget to apply a rotation
                        return Transform.rotate(
                          // 6. the angle is a function of the AnimationController's value
                          angle: 2.05 * pi * _animationController.value,
                          child: child,
                        );
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: SizedBox(
                    width: 210,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MainScreen()),
                      ),

                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.white, width: 0.5)
                          )

                      ),
                      child: const Text('Get back to menu',style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Relay')),
                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}