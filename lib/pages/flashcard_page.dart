import 'package:flashcard_app/controller/flashcard_notifier.dart';
import 'package:flashcard_app/widgets/common_appbar.dart';
import 'package:flashcard_app/widgets/flashcard/flashcard_1.dart';
import 'package:flashcard_app/widgets/flashcard/flashcard_2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlashCardPage extends StatefulWidget {
  const FlashCardPage({super.key});

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      //call the runSlideCard1 method when the session start
      final flashCardProvider =
          Provider.of<FlashCardNotifier>(context, listen: false);
      flashCardProvider.runSlideCard1();
      flashCardProvider.generateAllSelectedWord();
      flashCardProvider.generateCurrentWord();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashCardNotifier>(builder: (_, notifier, __) {
      return Scaffold(
        appBar: const CommonAppBar(),
        body: IgnorePointer(
          //to prevent unneccessary touch
          ignoring: notifier.ignoreTouch,
          child: const Stack(
            children: [
              FlashCard1(),
              FlashCard2(),
            ],
          ),
        ),
      );
    });
  }
}
