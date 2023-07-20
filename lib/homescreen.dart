import 'package:amazon_prime/downloadscreen.dart';
import 'package:amazon_prime/findscreen.dart';
import 'package:amazon_prime/mainscreen.dart';
import 'package:amazon_prime/mystuffscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentSelectedIndex =0;

  final _pages = [
    const MainScreen(),
    const FindScreen(),
    const DownloadScreen(),
    const MyStuffScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex=newIndex;
          });
          
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label:"Find"),
          BottomNavigationBarItem(icon: Icon(Icons.download),label:"Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:"My Stuff")
        ]),
    );
  }
}