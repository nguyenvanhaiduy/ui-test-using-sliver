import 'package:flutter/material.dart';

class Deal extends StatelessWidget {
  const Deal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 220, 226, 231),
            Color.fromARGB(255, 168, 197, 222),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Todays Deal',
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  '50% OFF',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Et provident eos est dolore. Eum libero eligendi molestias aut et quibusdam aspernatur.',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    // print('log');
                  },
                  child: const Image(
                    image: AssetImage(
                      'assets/images/backgrounds/buy_it_now.png',
                    ),
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage('assets/images/backgrounds/image 4.png'),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
