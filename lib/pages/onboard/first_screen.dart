import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// import 'package:linear_gradient/linear_gradient.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0001FC'),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'LATECH',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PTMono',
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'TECH MARKET',
                style: TextStyle(
                    color: Colors.white,
                  fontFamily: 'PTMono'
                ),
              ),
              SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(
                    blurRadius: 40,
                    color: HexColor('#7C88FF'),
                    spreadRadius: 3)],
              ),
              child: CircleAvatar(
                radius: 108.0,
                backgroundColor: HexColor('#0001FC'),
                child: Image(image: AssetImage('assets/images/Vector.png'))
              ),
            ),
              SizedBox(height: 50),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'/second_screen');
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Container(
                    width: 312,
                    height: 45,
                    child: Center(
                      child: Text(
                        'Let’s start',
                        style: TextStyle(
                            color: HexColor('#0001FC'),
                          fontSize: 18
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'/');
                  },
                  child: Text(
                    'Skip for now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
