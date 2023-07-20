
import 'package:amazon_prime/widgets/top_card_img.dart';
import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  TopCard({Key? key, });
 
  // final List <String> MainPhotos=[
  //   "https://m.media-amazon.com/images/S/pv-target-images/7e98990c18149ef93c2fe9aaa3c51f97ad96c44f7406c3c2a6a720bb84ccafbc._UR1920,1080_SX1080_FMpng_.png",
  //   "https://m.media-amazon.com/images/S/pv-target-images/e20b8b48f1b00f5bf10420bda8ed8c7eb97d7f9c26e1e1cce8b0fe00bc713308._UR1920,1080_SX1080_FMjpg_.jpg",
  //   "https://m.media-amazon.com/images/S/pv-target-images/add28a057dd0762984011f37ab2bf790538f611b3c7b3b1103053f02d1f75a34._UR1920,1080_SX1080_FMjpg_.jpg",
  //   "https://m.media-amazon.com/images/S/pv-target-images/9510ac5234e4f7e5a18555ea4c345055c4bcfcfe9734c5303fa551f786f82a6a._UR1920,1080_SX1080_FMjpg_.jpg",
  //   ];
  @override
  Widget build(BuildContext context) {
    
    return 
      // color: Colors.cyan,
      // width: 500,
      // height:200,
      
      ListView(
        
        scrollDirection: Axis.horizontal,
        children: List.generate(5, (index) => TopCardImage(index: index, )),
      );
    
  }
}