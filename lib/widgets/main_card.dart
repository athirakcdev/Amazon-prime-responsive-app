import 'package:flutter/material.dart';

class MainCard extends StatelessWidget{
 const MainCard({Key?key, required this.images,required this.indexes});
  final List images;
  final int indexes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 120,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: NetworkImage(images[indexes]),
            fit: BoxFit.fill)
        ),
      ),
    );
  }
}