// import 'package:edtech_app/utils/app_theme.dart';
// import 'package:flutter/material.dart';
//
// class CourseSectionNavigation extends StatelessWidget{
//   int index;
//   CourseSectionNavigation({required this.index})
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:const EdgeInsets.symmetric(horizontal: 10),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                   color: AppTheme.inkGreyLight,
//                   borderRadius:const BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       bottomLeft: Radius.circular(10)
//                   )
//               ),
//               child: TextButton(
//                 onPressed: (){
//                   print("Button Pressed");
//                 },
//                 child: Text(
//                   "Lessons",
//                   style: TextStyle(
//                     color: AppTheme.inkGreyDark,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 5,),
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: AppTheme.inkGreyLight,
//               ),
//               child: TextButton(
//                 onPressed: (){
//                   print("Button Pressed");
//                 },
//                 child: Text(
//                     "Tests",
//                   style: TextStyle(
//                     color: AppTheme.inkGrey,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 5,),
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                   color: AppTheme.inkGreyLight,
//                   borderRadius: const BorderRadius.only(
//                       topRight: Radius.circular(10),
//                       bottomRight: Radius.circular(10)
//                   )
//               ),
//               child: TextButton(
//                 onPressed: (){
//                   print("Button Pressed");
//                 },
//                 child: Text(
//                     "Discuss",
//                   style: TextStyle(
//                     color: AppTheme.inkGrey,
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }