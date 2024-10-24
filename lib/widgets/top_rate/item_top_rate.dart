import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_test1/widgets/top_rate/rate.dart';

class ItemTopRate extends StatelessWidget {
  const ItemTopRate({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                imageUrl,
              ),
              radius: 39,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              child: const Column(
                children: [
                  Text(
                    'Wade Warren',
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    'Beautician',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Rate(opacity: 0.2)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
