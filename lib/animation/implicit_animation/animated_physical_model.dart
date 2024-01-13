import 'package:flutter/material.dart';

class AnimatedPhysicalModelEx extends StatefulWidget {
  const AnimatedPhysicalModelEx({super.key});

  @override
  State<AnimatedPhysicalModelEx> createState() =>
      _AnimatedPhysicalModelExState();
}

class _AnimatedPhysicalModelExState extends State<AnimatedPhysicalModelEx> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isPressed = !_isPressed;
            });
          },
          child: AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            elevation: _isPressed ? 60 : 0,
            curve: Curves.bounceOut,
            color: Colors.grey,
            shadowColor: Colors.blueGrey,
            duration: const Duration(milliseconds: 400),
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/tom.png'),
            ),
          ),
        ),
      ),
    );
  }
}
