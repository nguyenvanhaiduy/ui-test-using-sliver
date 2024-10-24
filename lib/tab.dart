import 'package:flutter/material.dart';
import 'package:ui_test1/data/dummy_data.dart';
import 'package:ui_test1/home.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final pages = [
    const HomeScreen(),
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.orange),
    Container(color: Colors.pink),
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 114, 98, 200),
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(imageIcons['chat']!)), label: 'Chat'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(imageIcons['blog']!)), label: 'Blog'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Acount'),
        ],
      ),
    );
  }
}
