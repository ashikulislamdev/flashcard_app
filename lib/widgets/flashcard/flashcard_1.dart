import 'package:flashcard_app/animation/half_flip_animation.dart';
import 'package:flashcard_app/animation/slide_animation.dart';
import 'package:flashcard_app/controller/flashcard_notifier.dart';
import 'package:flashcard_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlashCard1 extends StatelessWidget {
  const FlashCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    return Consumer<FlashCardNotifier>(
      builder: (_, notifier, __) {
        return GestureDetector(
          onDoubleTap: () {
            notifier.runFlipCard1();
            notifier.setIgnoreTouch(
                ignore:
                    true); //while the card is fliping around we want to prevent touches
          },
          child: HalfFlipAnimation(
            isAnimate: notifier.flipCard1,
            isReset: notifier.isResetFlipCard1,
            isFlipFromHalfWay: false,
            isAnimationCompleted: () {
              notifier.resetCard1();
              notifier.runFlipCard2();
            },
            child: SlideAnimation(
              isAnimationCompleted: () {
                notifier.setIgnoreTouch(
                    ignore:
                        false); // this is after card 1 has animated from the bottom to the center
              },
              isReset: notifier.isResetSlideCard1,
              isAnimate: notifier.slideCard1,
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
                  child: Text(notifier.wordModel.english),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
