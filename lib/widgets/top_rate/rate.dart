import 'package:flutter/material.dart';
import 'package:ui_test1/data/dummy_data.dart';

class Rate extends StatelessWidget {
  const Rate({super.key, required this.opacity});
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: 40,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(opacity),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ImageIcon(
            AssetImage(imageIcons['star']!),
            color: const Color.fromARGB(255, 114, 98, 200),
            size: 14,
          ),
          const Text(
            '4.9',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          )
        ],
      ),
    );
  }
}
