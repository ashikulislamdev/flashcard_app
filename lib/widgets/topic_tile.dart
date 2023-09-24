import 'package:flashcard_app/animation/fadein_animation.dart';
import 'package:flashcard_app/utils/constants.dart';
import 'package:flashcard_app/utils/methods.dart';
import 'package:flutter/material.dart';

class ToipicTile extends StatelessWidget {
  const ToipicTile({super.key, required this.topic});
  final String topic;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: GestureDetector(
        onTap: () {
          loadSession(context: context, topic: topic);
        },
        child: Container(
          decoration: const BoxDecoration(
              color: deepMainColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12))),
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: Icon(
                  Icons.menu_book_outlined,
                  color: successColor,
                  size: 40,
                ),
              ),
              Expanded(
                child: Text(
                  topic,
                  style: defaultText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
