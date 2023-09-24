import 'package:flashcard_app/controller/flashcard_notifier.dart';
import 'package:flashcard_app/pages/flashcard_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

loadSession({required BuildContext context, required String topic}) {
  Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const FlashCardPage()));
  Provider.of<FlashCardNotifier>(context, listen: false).setTopic(topic: topic);
}
