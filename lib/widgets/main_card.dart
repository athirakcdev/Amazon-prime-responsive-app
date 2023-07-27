// import 'package:flutter/material.dart';

// class MainCard extends StatelessWidget{
//  const MainCard({Key?key, required this.images,required this.indexes});
//   final List images;
//   final int indexes;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         width: 160,
//         height: 120,
        
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           image: DecorationImage(
//             image: NetworkImage(images[indexes]),
//             fit: BoxFit.fill)
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainCard extends StatefulWidget {
  const MainCard({Key? key, required this.images, required this.indexes});

  final List images;
  final int indexes;

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      onKey: (node, event) {
        if (event is RawKeyDownEvent) {
          if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
            // Move focus to the previous image
            FocusScope.of(context).previousFocus();
            return KeyEventResult.handled;
          } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
            // Move focus to the next image
            FocusScope.of(context).nextFocus();
            return KeyEventResult.handled;
          }
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        onTap: () {
          // Handle the tap event (optional)
          print('Image tapped: ${widget.indexes}');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 160,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(widget.images[widget.indexes]),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: _focusNode.hasFocus ? Colors.blue : Colors.transparent,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
