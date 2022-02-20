import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image: AssetImage('assets/images/sales.png')),
                ],
              ),
              SizedBox(height: 50,),
              Text(
                'A lot of exclusives',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height:40),
              Image(
                image: AssetImage('assets/images/Diaporama-3.png'),
              ),
              SizedBox(height:20),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/auth_screen_one');
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                  )),
              SizedBox(height: 50)
            ],

          ),
        ),
      ),
    );
  }
}
