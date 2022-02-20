import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0001FC'),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image(image: AssetImage('assets/images/Illustration.png'))
                ),
                SizedBox(height:120),
                Text(
                  'The best tech market',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height:30),
                Image(
                    image: AssetImage('assets/images/Diaporama.png'),
                ),
                SizedBox(height:30),
                TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/third_screen');
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                ))
              ],

            ),
          ),
      ),
    );
  }
}
