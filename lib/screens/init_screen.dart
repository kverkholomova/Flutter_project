import 'package:flutter/material.dart';
import 'package:project_verkholomova/screens/game_screen.dart';
import 'package:project_verkholomova/screens/main_screen.dart';


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



class InitScreen1 extends StatefulWidget {
  const InitScreen1({Key? key}) : super(key: key);

  @override
  State<InitScreen1> createState() => _InitScreen1State();
}


class _InitScreen1State extends State<InitScreen1> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

        child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                ); },

              );
            },
          ),

          title:  Text('Level $point'),
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
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),

              child: InkWell(
                child: Padding(padding: EdgeInsets.only(top: 20),
                  child: Text("$point"),
                ),

              )

            ),
          ],
          backgroundColor: Colors.deepPurpleAccent,
          toolbarHeight: 60,
        ),



    ),
      );
  }
}
