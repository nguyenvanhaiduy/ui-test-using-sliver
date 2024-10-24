import 'package:flutter/material.dart';
import 'package:ui_test1/data/dummy_data.dart';
import 'package:ui_test1/widgets/custom_button.dart';
import 'package:ui_test1/widgets/top_rate/rate.dart';

class ItemTopService extends StatelessWidget {
  const ItemTopService({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image(
                image: AssetImage(imageUrl),
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 6,
            left: 150,
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: Container(
                width: 180,
                height: 100,
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(imageAvatars[0]),
                      width: 35,
                    ),
                    const SizedBox(width: 8),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Miss Zachary Will',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Beautician',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color.fromARGB(255, 114, 98, 200),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            'Doloribus saepe aut necessit qui non qui.',
                            style: TextStyle(
                              fontSize: 7,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Rate(opacity: 0.2),
                            SizedBox(width: 4),
                            CustomButton(
                              text: 'Book Now',
                              size: Size(70, 20),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
