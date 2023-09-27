import 'package:flashcard_app/animation/half_flip_animation.dart';
import 'package:flashcard_app/animation/slide_animation.dart';
import 'package:flashcard_app/controller/flashcard_notifier.dart';
import 'package:flashcard_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlashCard2 extends StatelessWidget {
  const FlashCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    return Consumer<FlashCardNotifier>(
      builder: (_, notifier, __) {
        return HalfFlipAnimation(
          isAnimate: notifier.flipCard2,
          isReset: false,
          isFlipFromHalfWay: true,
          isAnimationCompleted: () {
            print('card 2');
          },
          child: SlideAnimation(
            slideDirection: SlideDirection.topRightIn,
            child: Center(
              child: Container(
                width: dSize.width * 0.9,
                height: dSize.height * 0.8,
                decoration: const BoxDecoration(
                    color: skyBlueColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ),
            ),
          ),
        );
      },
    );
  }
}
