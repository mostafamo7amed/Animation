import 'package:animation/animation/implicit_animation/animated_align.dart';
import 'package:animation/animation/implicit_animation/animated_default_text.dart';
import 'package:animation/animation/implicit_animation/animated_opacity.dart';
import 'package:animation/animation/implicit_animation/animated_padding.dart';
import 'package:animation/animation/implicit_animation/animated_physical_model.dart';
import 'package:flutter/material.dart';

import 'implicit_animation/animation_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimatedAlignEx(),
                  ),
                );
              },
              child: const Text('Animated Align')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimationContainerEx(),
                  ),
                );
              },
              child: const Text('Animated Container')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedDefaultTextEx(),
                ),
              );
            },
            child: const Text('Animated Defualt Text'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedOpacityEx(),
                ),
              );
            },
            child: const Text('Animated Opacity'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedPaddingEx(),
                ),
              );
            },
            child: const Text('Animated Padding'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimatedPhysicalModelEx(),
                ),
              );
            },
            child: const Text('Animated Physical Model'),
          ),
        ],
      ),
    );
  }
}
