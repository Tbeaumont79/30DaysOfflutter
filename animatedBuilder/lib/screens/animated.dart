import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimated extends StatefulWidget {
  MyAnimated({Key key}) : super(key: key);

  @override
  _MyAnimatedState createState() => _MyAnimatedState();
}

class _MyAnimatedState extends State<MyAnimated>
    with SingleTickerProviderStateMixin {
  AnimationController _animatedController;

  @override
  void initState() {
    _animatedController =
        AnimationController(vsync: this, duration: const Duration(seconds: 9))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _animatedController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: AnimatedBuilder(
        animation: _animatedController,
        builder: (BuildContext context, Widget child) {
          return Transform.rotate(
            angle: _animatedController.value * 2.0 * pi,
            child: Container(
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
