import 'package:flutter/material.dart';
import 'package:ui_test1/data/dummy_data.dart';
import 'package:ui_test1/widgets/recommended/item_recommed.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(10),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [
          ItemRecommend(imageUrl: imageBackgrounds[0]),
          ItemRecommend(imageUrl: imageBackgrounds[0]),
          ItemRecommend(imageUrl: imageBackgrounds[0]),
          ItemRecommend(imageUrl: imageBackgrounds[0]),
        ],
      ),
    );
  }
}
