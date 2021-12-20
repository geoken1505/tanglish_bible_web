import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'footer.dart';
import 'navbar.dart';

class AppLandingPage extends StatefulWidget {
  const AppLandingPage({Key? key}) : super(key: key);

  @override
  _AppLandingPageState createState() => _AppLandingPageState();
}

class _AppLandingPageState extends State<AppLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(
        children: <Widget>[
          Navbar(),
          Container(
            height: MediaQuery.of(context).size.height-150,
            width: MediaQuery.of(context).size.width,
            child:

            SingleChildScrollView(

              child: Column(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 800) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: constraints.biggest.width / 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "DOWNLOAD OUR \n MOBILE APP",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0,
                                        color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                                    child: Text(
                                      "Now you can easily access Tanglish Bible seamlessly through our mobile app on offline mode and many other features.. \n Download today!!!",
                                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(height: 30,),
                                  Row(
                                    children: [
                                      MaterialButton(

                                        color: Colors.pink,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                        onPressed: () {
                                          js.context.callMethod('open', ['https://bit.ly/3Ff3jMl', '_blank']);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20.0, horizontal: 40.0),
                                          child: Row(
                                            children: [
                                              Image.asset('google-play.png', height: 35,width: 35,),
                                              SizedBox(width: 10,),
                                              Text(
                                                "GOOGLE PLAY",
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 40,),
                                      MaterialButton(

                                        color: Colors.pink,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                        onPressed: () {
                                          js.context.callMethod('open', ['https://bit.ly/32eQnrt', '_blank']);
                                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20.0, horizontal: 40.0),
                                          child: Row(
                                            children: [
                                              Image.asset('app-store.png', height: 35,width: 35,),
                                              SizedBox(width: 10,),
                                              Text(
                                                "APP STORE",
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 200,),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Image.asset(
                                "mobile-app.png",

                                width: (constraints.biggest.width/2)/2,
                                height: 550,
                                //height: ,
                              ),
                            ),
                            SizedBox(height: 100,),

                          ],
                        );
                      } else {
                        return Column(
                          children: <Widget>[
                            Container(
                              width: constraints.biggest.width / 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "DOWNLOAD OUR \n MOBILE APP",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0,
                                        color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      "Now you can easily access Tanglish Bible seamlessly through our mobile app on offline mode and many other features.. \n Download today!!!",
                                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(height: 30,),
                                  Column(
                                    children: [
                                      MaterialButton(

                                        color: Colors.pink,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                        onPressed: () {
                                          js.context.callMethod('open', ['https://bit.ly/3Ff3jMl', '_blank']);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20.0, horizontal: 40.0),
                                          child: 
                                          Row(
                                            children: [
                                              Image.asset('google-play.png', height: 35,width: 35,),
                                              SizedBox(width: 10,),
                                              Text(
                                                "GOOGLE PLAY",
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 40,),
                                      MaterialButton(

                                        color: Colors.pink,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                        onPressed: () {
                                          js.context.callMethod('open', ['https://bit.ly/32eQnrt', '_blank']);
                                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20.0, horizontal: 40.0),
                                          child: Row(
                                            children: [
                                              Image.asset('app-store.png', height: 35,width: 35,),
                                              SizedBox(width: 10,),
                                              Text(
                                                "APP STORE",
                                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: Image.asset(
                                "mobile-app.png",
                                width: constraints.biggest.width/2,
                                height: 350,
                                //height: ,
                              ),
                            ),

                          ],
                        );
                      }
                    },
                  ),

                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 800) {
                        return
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Material(
                              
                              child: 
                              Container(
                                height: 200,
                                width: 200,

                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(24),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    colors: [
                                      Colors.grey,
                                      Colors.black,
                                    ]
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('5,000+', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 45
                                    ),),
                                    SizedBox(height: 20,),
                                    Text('USERS', style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22
                                    ),),


                                  ],
                                ),
                              ),
                              elevation: 30,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            Material(

                              child:
                              Container(
                                height: 200,
                                width: 200,

                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(24),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        colors: [
                                          Colors.grey,
                                          Colors.black,
                                        ]
                                    )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('4,000+', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 45
                                    ),),
                                    SizedBox(height: 20,),
                                    Text('DOWNLOADS', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22
                                    ),),


                                  ],
                                ),
                              ),
                              elevation: 30,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            Material(

                              child:
                              Container(
                                height: 200,
                                width: 200,

                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(24),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        colors: [
                                          Colors.grey,
                                          Colors.black,
                                        ]
                                    )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('2,500+', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 45
                                    ),),
                                    SizedBox(height: 20,),
                                    Text('LIKES', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22
                                    ),),


                                  ],
                                ),
                              ),
                              elevation: 30,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            Material(

                              child:
                              Container(
                                height: 200,
                                width: 200,

                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(24),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        colors: [
                                          Colors.grey,
                                          Colors.black,
                                        ]
                                    )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('4.3', style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 45
                                        ),),
                                        SizedBox(width: 10,),
                                        Icon(Icons.star, color: Colors.white, size: 45,)
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Text('RATINGS', style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 22
                                    ),),


                                  ],
                                ),
                              ),
                              elevation: 30,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          children: <Widget>[
                            Container(
                              width: constraints.biggest.width / 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Material(

                                    child:
                                    Container(
                                      height: 200,
                                      width: 200,

                                      decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(24),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              colors: [
                                                Colors.grey,
                                                Colors.black,
                                              ]
                                          )
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('5,000+', style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 45
                                          ),),
                                          SizedBox(height: 20,),
                                          Text('USERS', style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22
                                          ),),


                                        ],
                                      ),
                                    ),
                                    elevation: 30,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  SizedBox(height: 45,),
                                  Material(

                                    child:
                                    Container(
                                      height: 200,
                                      width: 200,

                                      decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(24),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              colors: [
                                                Colors.grey,
                                                Colors.black,
                                              ]
                                          )
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('4,000+', style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 45
                                          ),),
                                          SizedBox(height: 20,),
                                          Text('DOWNLOADS', style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22
                                          ),),


                                        ],
                                      ),
                                    ),
                                    elevation: 30,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  SizedBox(height: 45,),
                                  Material(

                                    child:
                                    Container(
                                      height: 200,
                                      width: 200,

                                      decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(24),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              colors: [
                                                Colors.grey,
                                                Colors.black,
                                              ]
                                          )
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('2,500+', style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 45
                                          ),),
                                          SizedBox(height: 20,),
                                          Text('LIKES', style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22
                                          ),),


                                        ],
                                      ),
                                    ),
                                    elevation: 30,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  SizedBox(height: 45,),
                                  Material(

                                    child:
                                    Container(
                                      height: 200,
                                      width: 200,

                                      decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(24),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              colors: [
                                                Colors.grey,
                                                Colors.black,
                                              ]
                                          )
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('4.3', style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 45
                                              ),),
                                              SizedBox(width: 10,),
                                              Icon(Icons.star, color: Colors.white, size: 45,)
                                            ],
                                          ),
                                          SizedBox(height: 20,),
                                          Text('RATINGS', style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22
                                          ),),


                                        ],
                                      ),
                                    ),
                                    elevation: 30,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 80,),

                          ],
                        );
                      }
                    },
                  ),

                ],
              ),
            ),

          ),

        ],
      ),
    )
    ;
  }
}
