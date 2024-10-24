import 'package:flutter/material.dart';
import 'package:ui_test1/data/dummy_data.dart';
import 'package:ui_test1/widgets/top_rate/item_top_rate.dart';

class TopRate extends StatelessWidget {
  const TopRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 130,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 224, 238, 244),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ItemTopRate(imageUrl: imageAvatars[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: imageAvatars.length,
      ),
      // child: RotatedBox(
      //   quarterTurns: -1,
      //   child: ListWheelScrollView(
      //     // scrollBehavior: ScrollBehavior(),
      //     // scrollDirection: Axis.horizontal,
      //     itemExtent: 100,
      //     useMagnifier: true,
      //     magnification: 1.5,
      //     children: imageAvatars.map((image) {
      //       return ItemTopRate(imageUrl: image);
      //     }).toList(),
      //   ),
      // ),
    );
  }
}
