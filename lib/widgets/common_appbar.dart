import 'package:flashcard_app/animation/fadein_animation.dart';
import 'package:flashcard_app/controller/flashcard_notifier.dart';
import 'package:flashcard_app/pages/home_page.dart';
import 'package:flashcard_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashCardNotifier>(
      builder: (_, notifier, __) {
        return AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: Hero(
              tag: notifier.topic,
              child: const Icon(
                Icons.topic_outlined,
                size: 30,
                color: whiteColor,
              ),
            ),
          ),
          title: FadeInAnimation(
            child: Text(
              notifier.topic,
              style: appTheme.appBarTheme.titleTextStyle!
                  .copyWith(color: whiteColor),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                    (route) => false);
              },
              icon: const Icon(
                Icons.close,
                size: 30,
                color: whiteColor,
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
