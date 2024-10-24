import 'package:flutter/material.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({super.key, required this.imageIcon});
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.75,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here',
                prefixIcon: const Icon(
                  Icons.search_rounded,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey, width: 2),
                ),
                contentPadding: const EdgeInsets.all(2),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(imageIcon),
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
