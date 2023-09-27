import 'dart:math';

import 'package:flutter/material.dart';

class HalfFlipAnimation extends StatefulWidget {
  const HalfFlipAnimation(
      {super.key,
      required this.child,
      required this.isAnimate,
      required this.isReset,
      required this.isFlipFromHalfWay,
      required this.isAnimationCompleted});
  final Widget child;
  final bool isAnimate;
  final bool isReset;
  final bool isFlipFromHalfWay;
  final VoidCallback isAnimationCompleted;

  @override
  State<HalfFlipAnimation> createState() => _HalfFlipAnimationState();
}

class _HalfFlipAnimationState extends State<HalfFlipAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800))
      ..addListener(() {
        if (animationController.isCompleted) {
          widget.isAnimationCompleted.call();
        }
      });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant HalfFlipAnimation oldWidget) {
    if (widget.isReset) {
      animationController.reset();
    }

    if (widget.isAnimate) {
      animationController.forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double rotationAdjustment = 0;
    if (widget.isFlipFromHalfWay) {
      rotationAdjustment = pi / 2;
    }

    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(animationController.value * pi / 2)
            ..rotateY(rotationAdjustment),
          alignment: Alignment.center,
          child: widget.child,
        );
      },
    );
  }
}
