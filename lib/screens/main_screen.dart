import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/init_screen.dart';
import 'game_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  width: 500,
                  height: 300,
                  child: (
                  Image(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe_CZWabgZxjiZue1lEnxAYG6Uxpa1DleyPQ&usqp=CAU"))
                  ),
                ),
              ),
            ),
            ElevatedButton( onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InitScreen()),
            );
            print('works');
            },
            child: Text("Play"))
          ],
        ),
      ),
    );
  }
}
