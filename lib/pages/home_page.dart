import 'package:flashcard_app/animation/fadein_animation.dart';
import 'package:flashcard_app/data/words.dart';
import 'package:flashcard_app/utils/constants.dart';
import 'package:flashcard_app/widgets/topic_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _topics = [];
  @override
  void initState() {
    for (var t in words) {
      if (!_topics.contains(t.topic)) {
        _topics.add(t.topic);
      }
      _topics.sort();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: dSize.height * 0.1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.rate_review_outlined,
              color: whiteColor,
              size: 32,
            ),
            FadeInAnimation(
              child: Text(
                "Flash Card\n我国学习卡",
                textAlign: TextAlign.center,
                style: appTheme.appBarTheme.titleTextStyle,
              ),
            ),
            const Icon(
              Icons.settings_outlined,
              color: whiteColor,
              size: 32,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: dSize.width * 0.04),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              expandedHeight: dSize.height * 0.4,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.all(dSize.width * 0.09),
                  child: FadeInAnimation(
                      child: Image.asset("assets/images/dragon.png")),
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: _topics.length,
                (context, index) => ToipicTile(topic: _topics[index]),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
