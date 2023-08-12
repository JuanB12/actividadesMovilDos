// import 'package:flutter/material.dart';
// import 'package:infinity_scroll/providers/Gif_provider.dart';
// import 'package:infinity_scroll/models/Modelo.dart';
// import 'package:http/http.dart' as http;

// class GifPage extends StatefulWidget {
//   const GifPage({Key? key}) : super(key: key);

//   @override
//   State<GifPage> createState() => _GifPageState();
// }

// class _GifPageState extends State<GifPage> {
//   final gifsprovider = GifProvider();

//   late Future<List<Modelo>> _listadoGifs;

//   @override
//   void initState() {
//     super.initState();
//     _listadoGifs = gifsprovider.getGifs();
//   }

//   /*@override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Container(
//         child: FutureBuilder(
//             future: _listadoGifs,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return GridView.count(
//                   crossAxisCount: 2,
//                   children: ListGifs(snapshot.data as List<ModeloGif>),
//                 );
//               } else {
//                 return Center(
//                   child: const CircularProgressIndicator(),
//                 );
//               }
//             }),
//       )),
//     );
//   }*/

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Container(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: FutureBuilder(
//               future: _listadoGifs,
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   return GridView.count(
//                     crossAxisCount: 1,
//                     children: ListGifs(snapshot.data! as List<Modelo>),
//                   );
//                 } else {
//                   print("ct");
//                   return Center(
//                     child: const CircularProgressIndicator(),
//                   );
//                 }
//               }),
//         ),
//       )),
//     );
//   }
// }

// List<Widget> ListGifs(List<Modelo> data) {
//   List<Widget> gifs = [];
//   for (var gif in data) {
//     final String url = gif.images?.downsized?.url as String;
//     gifs.add(Card(
//       child: Column(
//         children: <Widget>[
//           Expanded(
//               child: Image.network(
//             url,
//             fit: BoxFit.fill,
//           ))
//         ],
//       ),
//     ));
//   }

//   return gifs;
// }
