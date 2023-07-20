// import 'package:amazon_prime/pages/homepage.dart';
// import 'package:amazon_prime/pages/kidspage.dart';
// import 'package:amazon_prime/pages/moviespage.dart';
// import 'package:amazon_prime/pages/tvshowspage.dart';
// import 'package:flutter/material.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         // backgroundColor: Color.fromRGBO(19, 26, 34, 1),
//         appBar: AppBar(
//           backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
//           title: LayoutBuilder(builder: (context,constraints){
//             if(constraints.maxWidth>800){
//                return const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     flex:2,
//                     child: Text("prime video",style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),),
//                   ),
//                    Expanded(
//                     flex:3,
//                      child: TabBar(tabs: [
//                                Tab(text: "Home"),
//                                Tab(text: "TV Shows"),
//                                Tab(text: "Movies"),
//                                Tab(text: "Kids"),
                       
//                              ]),
//                    ),
//                 ],
//                );
               
               
// //           centerTitle: true,
// //           backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
// //           shadowColor: Colors.white,
// //           bottom: const TabBar(tabs: [
// //             Tab(text: "Home"),
// //             Tab(text: "TV Shows"),
// //             Tab(text: "Movies"),
// //             Tab(text: "Kids"),
    
// //           ]),;

//             }
//             else{
//               return const Column(
//                 children: [
//                   Center(
//                     child: Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text("prime video",style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                                       ),),
//                     ),
//                   ),
                  
//                     TabBar(tabs: [
//                               Tab(text: "Home"),
//                               Tab(text: "TV Shows"),
//                               Tab(text: "Movies"),
//                               Tab(text: "Kids"),
                      
//                             ]),
                  
//                 ],
//               ) ;
//             }
//           })
//         ),
//         body: Container(
//           color: Colors.white,
//           child: TabBarView(children: [
//             HomePage(),
//             const TvShowsPage(),
//             const  MoviesPage(),
//             const KidsPage(),
//           ]),
//         ),
//       ),
//     );
//   }
// }






// import 'package:amazon_prime/pages/homepage.dart';
// import 'package:amazon_prime/pages/kidspage.dart';
// import 'package:amazon_prime/pages/moviespage.dart';
// import 'package:amazon_prime/pages/tvshowspage.dart';
// import 'package:flutter/material.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         // backgroundColor: Color.fromRGBO(19, 26, 34, 1),
//         appBar: AppBar(
//           title: const Text("prime video"),
//           centerTitle: true,
//           backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
//           shadowColor: Colors.white,
//           bottom: const TabBar(tabs: [
//             Tab(text: "Home"),
//             Tab(text: "TV Shows"),
//             Tab(text: "Movies"),
//             Tab(text: "Kids"),
    
//           ]),
//         ),
//         body: TabBarView(children: [
//           HomePage(),
//           const TvShowsPage(),
//           const  MoviesPage(),
//           const KidsPage(),
//         ]),
//       ),
//     );
//   }
// }

import 'package:amazon_prime/pages/homepage.dart';
import 'package:amazon_prime/pages/kidspage.dart';
import 'package:amazon_prime/pages/moviespage.dart';
import 'package:amazon_prime/pages/tvshowspage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth>800){
             return Scaffold(
          // backgroundColor: Color.fromRGBO(19, 26, 34, 1),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
            title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex:2,
                      child: Text("prime video",style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                     Expanded(
                      flex:3,
                       child: TabBar(tabs: [
                                 Tab(text: "Home"),
                                 Tab(text: "TV Shows"),
                                 Tab(text: "Movies"),
                                 Tab(text: "Kids"),
                         
                               ]),
                     ),
                  ],
                 )
,
          ),
                 body: TabBarView(children: [
          HomePage(),
          const TvShowsPage(),
          const  MoviesPage(),
          const KidsPage(),
        ]),   
        );
          }
          else{
             return Scaffold(
          appBar: AppBar(
          title: const Text("prime video"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
          shadowColor: Colors.white,
          bottom: const TabBar(tabs: [
            Tab(text: "Home"),
            Tab(text: "TV Shows"),
            Tab(text: "Movies"),
            Tab(text: "Kids"),
    
          ]),
        ),
        body: TabBarView(children: [
          HomePage(),
          const TvShowsPage(),
          const  MoviesPage(),
          const KidsPage(),
        ]),
      );
             
          }
        },
 
      ),
    );
  }
}