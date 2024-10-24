import 'package:flutter/material.dart';
import 'package:ui_test1/data/dummy_data.dart';
import 'package:ui_test1/widgets/top_service/item_top_service.dart';

class TopService extends StatelessWidget {
  const TopService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      // color: Colors.red,
      padding: const EdgeInsets.all(10),
      // child: ListView.separated(
      //   itemBuilder: ((context, index) => ItemTopService(
      //         imageUrl: imageBackgrounds[index],
      //       )),
      //   separatorBuilder: (context, index) => const SizedBox(height: 10),
      //   itemCount: imageBackgrounds.length,
      // ),
      child: ListWheelScrollView(
        itemExtent: 140,
        // useMagnifier: true,
        // magnification: 1.2,
        children: imageBackgrounds.map((image) {
          return ItemTopService(
            imageUrl: image,
          );
        }).toList(),
      ),
    );
  }
}
