import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
   SlidingText({required this.slidingAnimation});
  Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation,
              child: Text('Rich your mind', textAlign: TextAlign.center));
        }
    );
  }
}
