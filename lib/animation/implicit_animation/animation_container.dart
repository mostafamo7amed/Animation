import 'package:flutter/material.dart';

class AnimationContainerEx extends StatefulWidget {
  const AnimationContainerEx({super.key});

  @override
  State<AnimationContainerEx> createState() => _AnimationContainerExState();
}

class _AnimationContainerExState extends State<AnimationContainerEx> {
  Color _color = Colors.grey;
  double _width = 100.0;
  double _height = 100.0;
  double _radius = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            setState(() {
              _color = Colors.grey;
              _width = 100.0;
              _height = 100.0;
              _radius = 20.0;
            });
          },
          child: const Icon(Icons.animation_rounded)),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _color = Colors.orange;
              _width = 200.0;
              _height = 200.0;
              _radius = 40.0;
            });
          },
          child: AnimatedContainer(
            width: _width,
            height: _height,
            curve: Curves.bounceOut,
            padding: const EdgeInsets.all(20),
            duration: const Duration(milliseconds: 400),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_radius),
              color: _color,
            ),
            child: Image.asset('assets/tom.png'),
          ),
        ),
      ),
    );
  }
}
