import 'package:amazon_prime/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return Shortcuts(
    //   shortcuts: <LogicalKeySet,Intent>{
    //     LogicalKeySet(LogicalKeyboardKey.select):const ActivateIntent()
    //   },
      // child: 
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            backgroundColor: Colors.black,
          ),
        ),
          home:const HomeScreen(),
      // ),
    );
  }
}