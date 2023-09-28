import 'package:flashcard_app/animation/slide_animation.dart';
import 'package:flutter/material.dart';

class FlashCardNotifier extends ChangeNotifier {
  String topic = '';

  setTopic({required String topic}) {
    this.topic = topic;
    notifyListeners();
  }

  bool ignoreTouch = true;

  setIgnoreTouch({required bool ignore}) {
    ignoreTouch = ignore;
    notifyListeners();
  }

  SlideDirection swipeDirection = SlideDirection.none;
  bool flipCard1 = false,
      slideCard1 = false,
      flipCard2 = false,
      swipeCard2 = false; //this 4 bool var handle 4 types of animation

  bool isResetSlideCard1 = false,
      isResetFlipCard1 = false,
      isResetFlipCard2 = false,
      isResetSwipeCard2 = false;

  runSlideCard1() {
    isResetSlideCard1 = false;
    slideCard1 = true;
    notifyListeners();
  }

  runFlipCard1() {
    isResetFlipCard1 = false;
    flipCard1 = true;
    notifyListeners();
  }

  runFlipCard2() {
    isResetFlipCard2 = false;
    flipCard2 = true;
    notifyListeners();
  }

  //
  resetCard1() {
    isResetSlideCard1 = true;
    isResetFlipCard1 = true;
    slideCard1 = false;
    flipCard1 = false;
    //we don't need notifyListener because we don't need to notify at that point of time that we've updated this var
  }

  resetCard2() {
    isResetFlipCard2 = true;
    isResetSwipeCard2 = true;
    flipCard2 = false;
    swipeCard2 = false;
  }

  runSwipeCard2({required SlideDirection direction}) {
    isResetSwipeCard2 = false;
    swipeDirection = direction;
    swipeCard2 = true;
    notifyListeners();
  }
}
