// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;
// import 'package:api/Models/PostModel.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
  

//   List<PostModel> postlist = [];

//   Future<List<PostModel>> getPostApi() async {
//     final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//     var data = jsonDecode(response.body.toString());
//     if(response.statusCode == 200){
//       postlist.clear();
//       for(Map<String, dynamic> i in data){
//         postlist.add(PostModel.fromJson(i));

//       }
//       return postlist;
//   }
//     else{
//       return postlist;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title:Text("Noble Prizes",style: TextStyle(color: Colors.black)),
//           titleSpacing: 00.0,
//         centerTitle: true,
//         toolbarHeight: 60.2,
//         toolbarOpacity: 0.8,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(25),
//               bottomLeft: Radius.circular(25)),
//         ),
//         elevation: 0.00,
//         backgroundColor: Colors.amber
//         Accent,
        
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//                 future: getPostApi(),
//                 builder: (context , snapshot){
//                   if(!snapshot.hasData){
//                     return Text("Loading");
//                   }else{
//                     return ListView.builder(
//                         itemCount: postlist.length,
//                         itemBuilder: (context,index){
//                           return Card(
//                             elevation: 50,
//           shadowColor: Colors.black,
//           color: Colors.amber[50],
//           child: SizedBox(
//             width: 300,
//             height: 500,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.amberAccent,
//                     radius: 108,
//                     child: const CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           postlist[index].nobelPrizes.toString()), //NetworkImage
//                       radius: 100,
//                     ), //CircleAvatar
//                   ), //CircleAvatar
//                   const SizedBox(
//                     height: 10,
//                   ), //SizedBox
//                   Text(
//                     postlist[index].nobelPrizes.toString(),
//                     style: TextStyle(fontSize: 15,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w500,),
                      
//                     ), //Textstyle
//                   ) //Text
//                   const SizedBox(
//                     height: 10,
//                   ), //SizedBox
//                   const Text(
//                     postlist[index].nobelPrizes.toString(),
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.black,
//                     ), //Textstyle
//                   ), //Text
//                   const SizedBox(
//                     height: 10,
//                   ), //SizedBox
//                   SizedBox(
//                     width: 100,
 
//                     child: ElevatedButton(
//                       onPressed: () => 'Null',
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.amberAccent)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(4),
//                         child: Row(
//                           children: const [
//                             Icon(Icons.touch_app),
//                             Text('Visit')
//                           ],
//                         ),
//                       ),
//                     ),
//                     // RaisedButton is deprecated and should not be used
//                     // Use ElevatedButton instead
 
//                     // child: RaisedButton(
//                     //   onPressed: () => null,
//                     //   color: Colors.green,
//                     //   child: Padding(
//                     //     padding: const EdgeInsets.all(4.0),
//                     //     child: Row(
//                     //       children: const [
//                     //         Icon(Icons.touch_app),
//                     //         Text('Visit'),
//                     //       ],
//                     //     ), //Row
//                     //   ), //Padding
//                     // ), //RaisedButton
//                   ) //SizedBox
//                 ],
//               ), //Column
//             ), //Padding
//           ), //SizedBox
//                           );

//                     });

//                   }
//                 }),
//           )
//         ],

//       ));
//         }
// //loadList() async {
//   //   var res = await http.get(Uri.https("",""));
//   //   if(res.statusCode ==200){
//   //     var
//   //   }
//   // }
// }
