import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.size});
  final String text;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 150, 135, 229),
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.center,
      child: InkWell(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
