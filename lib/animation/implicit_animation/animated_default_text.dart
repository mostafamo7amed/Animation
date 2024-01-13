import 'package:flutter/material.dart';

class AnimatedDefaultTextEx extends StatefulWidget {
  const AnimatedDefaultTextEx({super.key});

  @override
  State<AnimatedDefaultTextEx> createState() => _AnimatedDefaultTextExState();
}

class _AnimatedDefaultTextExState extends State<AnimatedDefaultTextEx> {
  Color _color = Colors.grey;
  double _fontSize = 20.0;
  _doAnimation() {
    setState(() {
      _color = Colors.amber;
      _fontSize = 40.0;
    });
  }

  _removeAnimation() {
    setState(() {
      _color = Colors.grey;
      _fontSize = 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            textAlign: TextAlign.center,
            curve: Curves.bounceOut,
            style: TextStyle(
              color: _color,
              fontSize: _fontSize,
            ),
            duration: const Duration(milliseconds: 400),
            child: const Text('Hello world'),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: _doAnimation, icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: _removeAnimation,
                  icon: const Icon(Icons.minimize_rounded)),
            ],
          ),
        ],
      ),
    );
  }
}
