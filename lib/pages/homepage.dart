
import 'package:amazon_prime/widgets/main_card.dart';
import 'package:amazon_prime/widgets/main_title.dart';
import 'package:amazon_prime/widgets/top_card.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});


  
final List <String> watchNextPhotos=[
    "https://m.media-amazon.com/images/S/pv-target-images/300af9a959e1d8309994a59b2af38b4bd78dee677cdf928678a32e889f1a7d2c._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/8a46f80cbf2eaceca25285029f75560252c653d7f40cd9e7d919578fad54f00b._UR1920,1080_SX1080_FMwebp_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/092bdb20ca04e5e9e9c318ea7b4902736e621b72a4cb385c490134735449ef72._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/d1a994dd8e299742be9870fbc94eccafa94e14c41092087ded8adc29c04dea09._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b0fbfeb5300b42eae8175c5b4540eb3aed853e1ff5f5f209e6c092442b4dab87._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/3c8fc032d1230835102e8dd9d028975173703ecab4774cc83fbfef63764f2d3b._UR1920,1080_SX1080_FMpng_.png",
    "https://m.media-amazon.com/images/S/pv-target-images/e746f5a027c65305a03bbfafeb13362d4ce25c955ea595a407b60e01dbe0d5b5._UR1920,1080_SX1080_FMwebp_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/46e63151da7eedb8291951c7da75eec6530209696c896a75a9279822cd9e850f._UR1920,1080_SX1080_FMwebp_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/f278a0cde19ab1f57b793419cf96363b7a804233d7882d4f7c0b48b7fb1624ef._UR1920,1080_SX1080_FMwebp_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/10d67472de72b34d41a29792766d409c0df8371a254906e73b7ef0a97941c472._UR1920,1080_SX1080_FMwebp_.jpg",

    
  ];
  final List <String> amazonOriginalPhotos=[
    "https://m.media-amazon.com/images/S/pv-target-images/97f7f20f68218395df7c4b3678fae71c012907f0199f3d37b4f3cfc5e526d013._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/ad89b54c27c1d99866b9610a6e97dcec7423d832d9a2f33f785b4c3360501ec1._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/85c39ec61dc9fa292ba60a1494985962a190e58be0e87ffcad4f9150cf57b741._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b36f8aeecbc75d757f7cf0fa491ccd82a37fdba3519bb917c057d8eac1844048._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/60f1852655ecc77e916c6f0e3774907d222ab5fd6a41227c9857ea1cc9b6a2d6._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/10d67472de72b34d41a29792766d409c0df8371a254906e73b7ef0a97941c472._UR1920,1080_SX1080_FMjpg_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/56421f37c030952cb0802912c41245aa6152087c5c0535d566b6ba68464650d6._UR1920,1080_SX1080_FMwebp_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/0fbd6a006c6ba7fd3d6067c6d9a1e6d5da1dd4831c3ebde18dcb9ccaa2988c14._UR1920,1080_SX1080_FMwebp_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/5a88dcbffe69c90013ae5d9e4b14bdacef33ee1742691faba3fa030dfe8ab564._UR1920,1080_SX1080_FMwebp_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/620cf5d55f42e9cf8a67415c0cc9eb9db894115c2b8fd25b881c0f07e0d18dcd._UR1920,1080_SX1080_FMwebp_.jpg",


  ];



  final List <String> watchInYourLanguagePhotos=[
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Hindi/55ca0649-5d84-444b-ade8-9b0d53704586._UR1920,1080_SX1080_FMjpg_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400English/2ad88761-6b25-4dc8-8f99-f6b16b7e8706._UR1920,1080_SX1080_FMjpg_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Telugu/3d399ae4-cff6-486b-8267-8470a3f7bb5f._UR1920,1080_SX1080_FMjpg_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Tamil/deaf4a18-5736-40e2-934b-4f5de073ae1d._UR1920,1080_SX1080_FMjpg_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Malayalam/970b91d5-5b0e-4bc0-99a9-f7014c3ddf61._UR1920,1080_SX1080_FMjpg_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Kannada/4b7a29c8-6fd4-421d-8406-973fcb3132fe._UR1920,1080_SX1080_FMjpg_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Punjabi/998f3b75-6799-4078-ba04-03300bdf593d._UR1920,1080_SX1080_FMwebp_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Bengali/a386c961-669f-40a2-9689-5ead3684e35a._UR1920,1080_SX1080_FMwebp_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Gujarati/bb4f5193-ce41-44e5-b9fa-43d288e40263._UR1920,1080_SX1080_FMwebp_.jpeg",
    "https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_480x400Internaitional/c58bc4fe-9e44-4136-8c9c-13ca131a3ebb._UR1920,1080_SX1080_FMwebp_.jpeg",

    ];
  
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:const Color.fromRGBO(19, 26, 34, 1),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex:2,child: TopCard()),
            
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MainTitle(title: "Watch next TV and movies"),
                    ),
                    LimitedBox(
                      maxHeight: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: 
                          List.generate(10, (index) => MainCard(images:watchNextPhotos,indexes:index)),
                        
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MainTitle(title: "Amazon Original Series"),
                    ),
                    LimitedBox(
                      maxHeight: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: 
                          List.generate(10, (index) => MainCard(images:amazonOriginalPhotos,indexes:index)),
                        
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MainTitle(title: "Watch in Your Language"),
                    ),
                    LimitedBox(
                      maxHeight: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: 
                          List.generate(10, (index) => MainCard(images:watchInYourLanguagePhotos,indexes:index)),
                        
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
    );
  }
}