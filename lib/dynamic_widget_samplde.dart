// /*
// A Backend-Driven UI toolkit, build your dynamic UI with json, and the json format is very similar with flutter widget code.
//  */

// import 'dart:html';

// import 'package:dynamic_widget/dynamic_widget.dart'; // this package is not compatible...
// import 'package:flutter/material.dart';

// class DynamicWidgetSample extends StatelessWidget {
//   const DynamicWidgetSample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             color: Color.fromARGB(0xff, 0, 0, 0),
//             alignment: Alignment.bottomLeft,
//             child: Text(
//               'flutter dynamic widget',
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(fontSize: 12),
//             ),
//           ),
//           //same container widget from json
//           DynamicWidgetBuilder.build('''
//               {
//                 'type':'Container',
//                 'color':'#000000',
//                 'alignment':'bottomLeft',
//                 'child':{
//                   'type':'Text',
//                   'data':'flutter dynamic widget',
//                   'maxLines':3,
//                   'overflow':'ellipsis',
//                   'style':{
//                     'fontSize':12.00,
//                   }
//                 }
//               }
//             '''),
//         ],
//       ),
//     );
//   }
// }
