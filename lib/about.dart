// import 'package:flutter/material.dart';
//
// class About extends StatelessWidget {
//   goBack(BuildContext context) {
//     Navigator.pop(context);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'About Developer',
//       theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//           appBarTheme: AppBarTheme(
//             elevation: 0,
//             color: Color(0xFAFAFA),
//           )
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           // actions: <Widget>[
//           //   IconButton(
//           //     icon: Icon(Icons.home_rounded),
//           //     color: Colors.white,
//           //     onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));},
//           //   )
//           // ],
//           title: Text('About Developer', style: TextStyle(color: Colors.white),),
//           backgroundColor: Colors.indigo,
//         ),
//         body: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 20,
//             ),
//             CircleAvatar(
//               backgroundColor: Colors.white,
//               radius: 100,
//               backgroundImage: AssetImage('images/face.png'),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               'Darrell Rafa Alamsyah',
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(6.0),
//               child: Card(
//                 child: ListTile(
//                     title: Text('darrell2645@gmail.com'),
//                     subtitle: Text('email pribadi')),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }