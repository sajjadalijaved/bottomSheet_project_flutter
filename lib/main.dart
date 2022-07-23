import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _show(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: context,
        builder: (context) => Padding(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Age'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Submit'))
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _show(context),
      ),
    );
  }
}
















// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Standard Bottom Sheet',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const ModalBottomSheet(),
//       // home: Scaffold(
//       //   body: Builder(builder: ((context) {
//       //     return Center(
//       //         child: ElevatedButton(
//       //             onPressed: () {
//       //               showModalBottomSheet(
//       //                   shape: const RoundedRectangleBorder(
//       //                       side: BorderSide(color: Colors.yellow, width: 2),
//       //                       borderRadius: BorderRadius.only(
//       //                           topLeft: Radius.circular(20),
//       //                           topRight: Radius.circular(20))),
//       //                   context: context,
//       //                   builder: (context) {
//       //                     return Wrap(
//       //                       children: const [
//       //                         ListTile(
//       //                           leading: Icon(Icons.share),
//       //                           title: Text('Share'),
//       //                         ),
//       //                         ListTile(
//       //                           leading: Icon(Icons.link),
//       //                           title: Text('Get link'),
//       //                         ),
//       //                         ListTile(
//       //                           leading: Icon(Icons.edit),
//       //                           title: Text('Edit name'),
//       //                         ),
//       //                         ListTile(
//       //                           leading: Icon(Icons.delete),
//       //                           title: Text('Delete collection'),
//       //                         ),
//       //                       ],
//       //                     );
//       //                   });
//       //             },
//       //             child: const Text('Show Bottom Sheet')));
//       //   })),
//       // ));
//     );
//   }
// }

// class ModalBottomSheet extends StatefulWidget {
//   const ModalBottomSheet({Key? key}) : super(key: key);

//   @override
//   _ModalBottomSheetState createState() => _ModalBottomSheetState();
// }

// class _ModalBottomSheetState extends State<ModalBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Modal Bottom Sheet',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "MODAL BOTTOM SHEET EXAMPLE",
//               style: TextStyle(
//                   fontStyle: FontStyle.italic,
//                   letterSpacing: 0.4,
//                   fontWeight: FontWeight.w600),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             RaisedButton(
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0))),
//               onPressed: () {
//                 showModalBottomSheet(
//                     context: context,
//                     builder: (context) {
//                       return Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           ListTile(
//                             leading: const Icon(Icons.photo),
//                             title: const Text('Photo'),
//                             onTap: () {
//                               Navigator.pop(context);
//                             },
//                           ),
//                           ListTile(
//                             leading: const Icon(Icons.music_note),
//                             title: const Text('Music'),
//                             onTap: () {
//                               Navigator.pop(context);
//                             },
//                           ),
//                           ListTile(
//                             leading: const Icon(Icons.videocam),
//                             title: const Text('Video'),
//                             onTap: () {
//                               Navigator.pop(context);
//                             },
//                           ),
//                           ListTile(
//                             leading: const Icon(Icons.share),
//                             title: const Text('Share'),
//                             onTap: () {
//                               Navigator.pop(context);
//                             },
//                           ),
//                         ],
//                       );
//                     });
//               },
//               padding: const EdgeInsets.only(
//                   left: 30, right: 30, top: 15, bottom: 15),
//               color: Colors.pink,
//               child: const Text(
//                 'Click Me',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                     letterSpacing: 0.6),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
