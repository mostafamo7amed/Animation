import 'package:flutter/material.dart';

class AnimatedPaddingEx extends StatefulWidget {
  const AnimatedPaddingEx({super.key});

  @override
  State<AnimatedPaddingEx> createState() => _AnimatedPaddingExState();
}

class _AnimatedPaddingExState extends State<AnimatedPaddingEx> {
  List<String> _character = ['tom', 'jerry', 'cheese', 'dog'];
  double _paddingValue = 5.0;
  bool _isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isExpand = !_isExpand;
            _paddingValue = _isExpand ? 30.0 : 5.0;
          });
        },
        child: _isExpand
            ? const Icon(Icons.expand)
            : const Icon(Icons.expand_less),
      ),
      appBar: AppBar(),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            4,
            (index) {
              return AnimatedPadding(
                padding: EdgeInsets.all(_paddingValue),
                duration: const Duration(milliseconds: 400),
                curve: Curves.bounceOut,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/${_character[index]}.png'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
