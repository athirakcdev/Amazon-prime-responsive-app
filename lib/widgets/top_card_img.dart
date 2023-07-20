// import 'package:amazon_prime/info/bloc/info_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class TopCardImage extends StatefulWidget {
//   TopCardImage({Key? key, required this.index});
//   // final List image;
//   final int index;

//   @override
//   State<TopCardImage> createState() => _TopCardImageState();
// }

// class _TopCardImageState extends State<TopCardImage> {
//   final InfoBloc infosbloc = InfoBloc();
//   @override
//   void initState() {
//     infosbloc.add(InfoInitialFetchEvent());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<InfoBloc, InfoState>(
//       bloc: infosbloc,
//       listenWhen: (previous, current) => current is InfoActionState,
//       buildWhen: (previous, current) => current is !InfoActionState,
//       listener: (context, state) {
//         // TODO: implement listener
//       },
//       builder: (context, state) {
//         switch (state.runtimeType) {
//           case InfoFetchingSuccessfulState:
//             final successState = state as InfoFetchingSuccessfulState;
//             return Column(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: LayoutBuilder(
//                     builder: ((context, constraints) {
//                       if(constraints.minWidth<400){
//                            return Container(
//                            width: 400,
//                            height:200,
//                            decoration: BoxDecoration(
//                            image: DecorationImage(
//                            image: NetworkImage(successState.infos[widget.index].url),
//                            fit:BoxFit.fill,),)
//                     );
//                       }
//                       else{
//                         return Container(
//                            width: 1200,
//                            height:200,
//                            decoration: BoxDecoration(
//                            image: DecorationImage(
//                            image: NetworkImage(successState.infos[widget.index].url),
//                            fit:BoxFit.fill,),)
//                     ); 
//                       }

//                     }),

//                   ),
//                 ),
//                 Expanded(flex:1,
//                     child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Text(successState.infos[widget.index].title,style: TextStyle(fontWeight: FontWeight.bold),),
//                       Text(successState.infos[widget.index].year,style: TextStyle(fontStyle: FontStyle.italic),),
//                       Text(successState.infos[widget.index].runtime,style: TextStyle(fontStyle: FontStyle.italic),),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           default:
//            return const SizedBox();
//         }
        
//       },
//     );
//   }
// }

import 'package:amazon_prime/info/bloc/info_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopCardImage extends StatefulWidget {
  
  TopCardImage({Key? key, required this.index, });
  // final List image;
  final int index;


  @override
  State<TopCardImage> createState() => _TopCardImageState();
}

class _TopCardImageState extends State<TopCardImage> {
  final InfoBloc infosbloc = InfoBloc();
  
  get width => null;
  
  get height => null;
  @override
  void initState() {
    infosbloc.add(InfoInitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context1) {
    return BlocConsumer<InfoBloc, InfoState>(
      bloc: infosbloc,
      listenWhen: (previous, current) => current is InfoActionState,
      buildWhen: (previous, current) => current is !InfoActionState,
      listener: (context1, state) {
        // TODO: implement listener
      },
      builder: (context1, state) {
        switch (state.runtimeType) {
          case InfoFetchingSuccessfulState:
            final successState = state as InfoFetchingSuccessfulState;
            return Column(
              children: [
                Expanded(
                  flex: 3,
                      
                         child: Container(
                         width: MediaQuery.of(context).size.width,
                         height:200,
                         decoration: BoxDecoration(
                         image: DecorationImage(
                         image: NetworkImage(successState.infos[widget.index].url),
                         fit:BoxFit.fill,),)
                                           ),
              ),
                Expanded(flex:1,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(successState.infos[widget.index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                      Text(successState.infos[widget.index].year,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 10),),
                      Text(successState.infos[widget.index].runtime,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 10),),
                    ],
                  ),
                ),
              ],
            );
          default:
           return const SizedBox();
        }
        
      },
    );
  }
}
