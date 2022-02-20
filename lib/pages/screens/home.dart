import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(7.0, 0, 7.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                child: Text('Home',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30
                ),
                ),
              ),
              Container(
                height: 210,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/First-product.png'),
                    fit: BoxFit.fill,

                  ),
                  borderRadius: BorderRadius.circular(56)
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: HexColor('#E0ECF8'),
                      shape: BoxShape.circle
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(image: AssetImage('assets/images/categories.png')),
                        SizedBox(height: 5),
                        Text('Categories',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                            fontSize: 13
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: HexColor('#E0ECF8'),
                        shape: BoxShape.circle
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(image: AssetImage('assets/images/fav.png')),
                        SizedBox(height: 5),
                        Text('Favorites',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: HexColor('#E0ECF8'),
                        shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(image: AssetImage('assets/images/gift.png')),
                        SizedBox(height: 5),
                        Text('Gift',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700
                          ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: HexColor('#E0ECF8'),
                        shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(image: AssetImage('assets/images/best-selling.png')),
                        SizedBox(height: 5),
                        Text('Best',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
