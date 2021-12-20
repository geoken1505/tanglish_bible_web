import 'package:flutter/material.dart';

import 'footer.dart';
import 'navbar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
          "ABOUT US",
          style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          color: Colors.white),
          ),
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
          "Its gives us immense pleasure to present you first ever cross platform application for Bible in Tanglish(Romanised Version). Our main motive is to make it possible where people can read the Holy Bible in Tamil even if they cant read in Tamil. This Romanised Version Bible is now available for Web, Android and IOS. Soon we will be available as Desktop application..",
          style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          ),
          SizedBox(height: 30,),

          ],
          ),
          ),
          SizedBox(width: 200,),
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Image.asset(
          "open-bible.gif",
          width: (constraints.biggest.width/2)/2,
          //height: ,
          ),
          ),
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
          "ABOUT US",
          style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          color: Colors.white),
          ),
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
          "Its gives us immense pleasure to present you first ever cross platform application for Bible in Tanglish(Romanised Version). Our main motive is to make it possible where people can read the Holy Bible in Tamil even if they cant read in Tamil. This Romanised Version Bible is now available for Web, Android and IOS. Soon we will be available as Desktop application..",
          style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          ),
          SizedBox(height: 30,),

          ],
          ),
          ),

          Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Image.asset(
          "open-bible.gif",
          width: constraints.biggest.width/2,
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
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: constraints.biggest.width / 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "WEB APPLICATION",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0,
                                          color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                                      child: Text(
                                        "Our Web Application will help you to access Tanglish Bible(Romanised Version) anywhere at anytime with just a compatible browser. Most highlighted features are Reading Bible, Presenting Slideshow of verse and Many more...",
                                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: 30,),

                                  ],
                                ),
                              ),
                              SizedBox(width: 200,),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20.0),
                                child: Image.asset(
                                  "web-app.gif",
                                  width: (constraints.biggest.width/2)/2,
                                  //height: ,
                                ),
                              ),
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
                                      "WEB APPLICATION",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0,
                                          color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                                      child: Text(
                                        "Our Web Application will help you to access Tanglish Bible(Romanised Version) anywhere at anytime with just a compatible browser. Most highlighted features are Reading Bible, Presenting Slideshow of verse and Many more...",
                                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: 30,),

                                  ],
                                ),
                              ),
                              SizedBox(width: 200,),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20.0),
                                child: Image.asset(
                                  "web-app.gif",
                                  width: constraints.biggest.width/2,
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
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: constraints.biggest.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "MOBILE APPLICATION",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  "Tanglish Bible is also available on offline mode as Mobile app for Android and IOS. There are multiple feature which you can access on the go...",
                                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 30,),

                            ],
                          ),
                        ),
                        SizedBox(width: 200,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Image.asset(
                            "mobile-app.gif",
                            width: (constraints.biggest.width/2)/2,
                            //height: ,
                          ),
                        ),
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
                                "MOBILE APPLICATION",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  "Tanglish Bible is also available on offline mode as Mobile app for Android and IOS. There are multiple feature which you can access on the go...",
                                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 30,),

                            ],
                          ),
                        ),
                        SizedBox(width: 200,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Image.asset(
                            "mobile-app.gif",
                            width: constraints.biggest.width/2,
                            //height: ,
                          ),
                        ),

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
