import 'package:flutter/material.dart';

class FlashCardNotifier extends ChangeNotifier {
  String topic = '';

  setTopic({required String topic}) {
    this.topic = topic;
    notifyListeners();
  }
}
