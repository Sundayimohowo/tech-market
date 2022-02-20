import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0001FC'),
      body: Center(
        child: Text(
            'Loading',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
