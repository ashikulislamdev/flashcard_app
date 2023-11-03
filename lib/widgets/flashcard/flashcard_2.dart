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
        return GestureDetector(
          onHorizontalDragEnd: (dragDetails) {
            // print(dragDetails.primaryVelocity);
            if (dragDetails.primaryVelocity! > 100) {
              notifier.runSwipeCard2(direction: SlideDirection.rightWay);
              notifier.runSlideCard1();
              notifier.setIgnoreTouch(ignore: true);
              notifier.generateCurrentWord();
            }
            if (dragDetails.primaryVelocity! < 100) {
              // print('Swiped left');
              notifier.runSwipeCard2(direction: SlideDirection.leftWay);
              notifier.runSlideCard1(); //
              notifier.setIgnoreTouch(ignore: true);
              notifier.generateCurrentWord();
            }
          },
          child: HalfFlipAnimation(
            isAnimate: notifier.flipCard2,
            isReset: notifier.isResetFlipCard2,
            isFlipFromHalfWay: true,
            isAnimationCompleted: () {
              notifier.setIgnoreTouch(
                  ignore:
                      false); //after completing the animation user can touch again
            },
            child: SlideAnimation(
              isReset: notifier.isResetSwipeCard2,
              isAnimationCompleted: () {
                notifier.resetCard2();
              },
              isAnimate: notifier
                  .swipeCard2, //apply the acutal animation when we should slideCard1 on the center of the screen
              slideDirection: notifier.swipeDirection,
              child: Center(
                child: Container(
                  width: dSize.width * 0.9,
                  height: dSize.height * 0.8,
                  decoration: const BoxDecoration(
                      color: skyBlueColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Text(notifier.wordModel.character),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
