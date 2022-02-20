import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class AuthScreenOne extends StatefulWidget {
  const AuthScreenOne({Key? key}) : super(key: key);

  @override
  _AuthScreenOneState createState() => _AuthScreenOneState();
}

class _AuthScreenOneState extends State<AuthScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('0001FC'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0,20,0,40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text('Connexion',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25
                  ),
                ),
              ),
             Column(
               children: [
                 Center(
                   child: Container(
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.fromLTRB(25.0,10,25.0,10),
                           child: TextButton(
                             onPressed:(){},
                             child: Padding(
                               padding: const EdgeInsets.fromLTRB(0.0,15,0.0,15),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text(
                                     'Create an account',
                                     style: TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w700,
                                         color: HexColor('#555555')
                                     ),),
                                 ],
                               ),
                             ),
                             style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                             ),
                           ),
                         ),
                         SizedBox(height: 5),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(25.0,10,25.0,10),
                           child: TextButton(
                             onPressed:(){},
                             child: Padding(
                               padding: const EdgeInsets.fromLTRB(0.0,15,0.0,15),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Image(image:AssetImage('assets/images/googleicon.png')),
                                   SizedBox(width: 20),
                                   Text(
                                     'Connect with Google',
                                     style: TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w700,
                                         color: HexColor('#555555')
                                     ),),
                                 ],
                               ),
                             ),
                             style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(25.0,10,25.0,10),
                           child: TextButton(
                             onPressed:(){},
                             child: Padding(
                               padding: const EdgeInsets.fromLTRB(0.0,15,0.0,15),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Image(image:AssetImage('assets/images/facebookicon.png')),
                                   SizedBox(width: 20),
                                   Text(
                                     'Connect with Facebook',
                                     style: TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w700,
                                         color: Colors.white
                                     ),),
                                 ],
                               ),
                             ),
                             style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all<Color>(HexColor('#415A93')),
                             ),
                           ),
                         ),
                         TextButton(
                           onPressed: (){
                             Navigator.pushNamed(context, '/login');
                           },
                           child: Text(
                             'Already Have An Account? Login',
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
