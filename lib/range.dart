import 'package:flutter/material.dart';


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
late AnimationController controller;
/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {


  @override
  void initState() {

    controller = AnimationController(

      vsync: this,
      duration: const Duration(seconds: 20),
    );
      controller.addListener(() {
        setState(() {});
      });


    controller.repeat(reverse: false);

    super.initState();
  }

 /* @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: LinearProgressIndicator(
            color: Colors.deepPurple,
            backgroundColor: Colors.black12,
            value: controller.value,
            minHeight: 10,

            semanticsLabel: 'Linear progress indicator',
          ),
        ),
      ),
    );
  }
}
