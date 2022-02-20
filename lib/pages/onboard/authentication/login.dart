import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#0001FC'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0,10,0,40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                        fontFamily: 'PTMono',
                      fontWeight: FontWeight.w700
                    ),
                  ),

                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Colors.transparent,
                            hintText: 'Enter Your Email',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              fontFamily: 'PTMono',
                            ),

                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height:25),
                        TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Colors.transparent,
                            hintText: 'Enter Your Password',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              fontFamily: 'PTMono',
                            ),

                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height:25),
                        TextButton(
                          onPressed:(){
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0.0,10,0.0,10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Validate',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor('#555555'),
                                    fontFamily: 'PTMono',
                                  ),),
                              ],
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'No Account Yet? Signup',
                      style: TextStyle(
                          color: HexColor('FBDF00'),
                          fontSize: 17
                      ),
                    ),
                  ),
                  SizedBox(height:25),
                  Image(image: AssetImage('assets/images/Diaporama-4.png')),
                  SizedBox(height:35),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      'Skip For Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
