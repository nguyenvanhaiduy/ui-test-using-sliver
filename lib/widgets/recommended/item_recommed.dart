import 'package:flutter/material.dart';
import 'package:ui_test1/widgets/custom_button.dart';

class ItemRecommend extends StatelessWidget {
  const ItemRecommend({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 170,
          child: Image(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'Miss Zachary Will',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        const Text(
          'Beautician',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11,
            color: Color.fromARGB(255, 114, 98, 200),
          ),
        ),
        const SizedBox(height: 2),
        const SizedBox(
          width: 160,
          child: Text(
            'Occaecati aut nam beatae quo non deserunt consequatur.',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
        const CustomButton(
          text: 'Book Workshop',
          size: Size(120, 25),
        )
      ],
    );
  }
}
