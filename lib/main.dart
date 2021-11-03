import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

// class BallPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text('Ask Me Anything'),
//       ),
//       body: Ball(),
//     );
//   }
// }
//
// class Ball extends StatefulWidget {
//
//   @override
//   _BallState createState() => _BallState();
// }
//
// class _BallState extends State<Ball> {
//   int ballNumber = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: TextButton(
//         onPressed: (){
//           setState(() {
//             ballNumber = Random().nextInt(5) + 1;
//           });
//         },
//         child: Image.asset('images/ball$ballNumber.png'),
//       ),
//     );
//   }
// }
