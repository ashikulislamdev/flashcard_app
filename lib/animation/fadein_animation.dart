import 'package:flutter/material.dart';

class FadeInAnimation extends StatefulWidget {
  const FadeInAnimation({super.key, required this.child});
  final Widget child;

  @override
  State<FadeInAnimation> createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation scaleAnimation, opacityAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 800), vsync: this);

    scaleAnimation = Tween(begin: 0.90, end: 1.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutSine));

    opacityAnimation = Tween(begin: 0.50, end: 1.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutSine));
    animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Opacity(
        opacity: opacityAnimation.value,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..scale(scaleAnimation.value),
          child: widget.child,
        ),
      ),
    );
  }
}
