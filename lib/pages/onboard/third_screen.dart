import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0001FC'),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Image(image: AssetImage('assets/images/computer.png')),
               ],
             ),
              Text(
                'A lot of exclusives',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height:20),
              Image(
                image: AssetImage('assets/images/Diaporama.png'),
              ),
              SizedBox(height:20),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/fourth_screen');
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                  )),
              SizedBox(height: 30)
            ],

          ),
        ),
      ),
    );
  }
}
