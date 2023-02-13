import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({super.key});

  @override
  State<ScaleAnimation> createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation>
    with TickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat(reverse: false);
  late Animation<double> animation =
      CurvedAnimation(parent: animationController, curve: Curves.linear);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scale Animation"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(children: [
            ScaleTransition(
              alignment: Alignment.topCenter,
              scale: animation,
              child: Container(
                height: 300,
                width: 200,
                color: Colors.redAccent,
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
