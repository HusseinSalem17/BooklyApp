import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            //offset => means x & y values to start in position and end in different offset
            position: slidingAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
