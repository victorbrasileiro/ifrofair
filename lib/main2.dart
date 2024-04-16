// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Tarefas'),
//         ),
//         body: ListView(
//           scrollDirection: Axis.vertical,
//           children: [
//             Task('Aprender Flutter'),
//             Task('Andar de bike'),
//             Task('Meditar'),
//             Task('Aprender Flutter'),
//             Task('Andar de bike'),
//             Task('Meditar'),
//             Task('Aprender Flutter'),
//             Task('Andar de bike'),
//             Task('Meditar'),
//             Task('Aprender Flutter'),
//             Task('Andar de bike'),
//             Task('Meditar'),
//             Task('Aprender Flutter'),
//             Task('Andar de bike'),
//             Task('Meditar'),
//           ],
//         ),
//
//         floatingActionButton: FloatingActionButton(onPressed: () {}),
//       ),
//     );
//   }
// }
//
// class Task extends StatelessWidget {
//   final String nome;
//
//   const Task(this.nome, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//       child: Stack(
//       children: [
//       Container(
//       color: Colors.blue,
//       height: 140,
//     ),
//     Container(
//     color: Colors.white,
//     height: 100,
//     child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//     Container(
//     color: Colors.black26,
//     width: 72,
//     height: 100,
//     ),
//     Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Container(
//     height: 52,
//     width: 52,
//     child: ElevatedButton(
//     onPressed: (){
//     setState((){
//     nivel++;
//     });
//     ],
//     ),
//     )
//     ],
//     ),
//     ),
//     );
//     }
//   }
//
