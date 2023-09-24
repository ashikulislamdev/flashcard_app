import 'package:flashcard_app/controller/flashcard_notifier.dart';
import 'package:flashcard_app/utils/constants.dart';
import 'package:flashcard_app/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlashCardPage extends StatefulWidget {
  const FlashCardPage({super.key});

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return Consumer<FlashCardNotifier>(builder: (_, notifier, __) {
      return Scaffold(
        appBar: const CommonAppBar(),
        body: Center(
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
      );
    });
  }
}
