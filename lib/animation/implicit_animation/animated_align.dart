import 'package:flutter/material.dart';

class AnimatedAlignEx extends StatefulWidget {
  const AnimatedAlignEx({super.key});

  @override
  State<AnimatedAlignEx> createState() => _AnimatedAlignExState();
}

class _AnimatedAlignExState extends State<AnimatedAlignEx> {
  int startingAlign = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            setState(() {
              startingAlign += 1;
            });
          },
          child: const Icon(Icons.animation_rounded)),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getAlignment(startingAlign),
            duration: const Duration(milliseconds: 400),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset(
                'assets/tom.png',
              ),
            ),
          ),
          AnimatedAlign(
            alignment: getAlignment(startingAlign + 1),
            duration: const Duration(milliseconds: 400),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset('assets/jerry.png'),
            ),
          ),
        ],
      ),
    );
  }

  Alignment getAlignment(int position) {
    if (position > 9) {
      startingAlign = 0;
    }
    switch (position) {
      case 0:
        return Alignment.topRight;
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topLeft;
      case 3:
        return Alignment.centerRight;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerLeft;
      case 6:
        return Alignment.bottomRight;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomLeft;
      default:
        return Alignment.topRight;
    }
  }
}
