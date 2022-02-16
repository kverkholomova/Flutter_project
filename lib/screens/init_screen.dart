import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/game_screen.dart';


Icon _counter=Icon(Hearts[0]['icon'],color: Colors.deepOrange);
Icon _counter1=Icon(Hearts[1]['icon'],color: Colors.deepOrange);
Icon _counter2=Icon(Hearts[2]['icon'],color: Colors.deepOrange);

List<Map<String, IconData>> Hearts=[
  {
    'icon':Icons.favorite,
  },
  {
    'icon':Icons.favorite,
  },
  {
    'icon':Icons.favorite,
  }
];



class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreenState();
}


class _InitScreenState extends State<InitScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('1 Task'),
        actions: [
          Row(
            children: [
              Visibility(child: _counter, visible: isvisible),
              Visibility(child: _counter1, visible: isvisible1),
              Visibility(child: _counter2, visible: isvisible2),
              /*Icon(Hearts[count]['icon'],color: Colors.deepOrange),
              Icon(Hearts[count]['icon'],color: Colors.deepOrange),*/
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              child: Padding(padding: EdgeInsets.all(8),
                child: Icon(Icons.auto_awesome ),
              ),

            )

          ),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        toolbarHeight: 60,
      ),

      body: Container(
        child:  GameScreen(),
      ),


    );
  }
}
