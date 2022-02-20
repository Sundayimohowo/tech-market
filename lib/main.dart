import 'package:flutter/material.dart';
import 'package:marketplace/pages/loading.dart';
import 'package:marketplace/pages/onboard/authentication/authScreen1.dart';
import 'package:marketplace/pages/onboard/authentication/login.dart';
import 'package:marketplace/pages/onboard/authentication/register.dart';
import 'package:marketplace/pages/onboard/first_screen.dart';
import 'package:marketplace/pages/onboard/fourth_screen.dart';
import 'package:marketplace/pages/onboard/second_screen.dart';
import 'package:marketplace/pages/onboard/third_screen.dart';
import 'package:marketplace/pages/screens/home.dart';
void main() =>runApp(MaterialApp(
  initialRoute: '/first_screen',
  routes: {
    '/': (context)=>Loading(),
    '/first_screen':(context)=>FirstScreen(),
    '/second_screen':(context)=>SecondScreen(),
    '/third_screen':(context)=>ThirdScreen(),
    '/fourth_screen':(context)=>FourthScreen(),
    '/auth_screen_one':(context)=>AuthScreenOne(),
    '/login':(context)=>LoginScreen(),
    '/register':(context)=>RegisterScreen(),
    '/home' : (context)=>HomePage()
  },
));
