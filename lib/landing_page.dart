import 'package:flutter/material.dart';

import 'home_screen.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
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
                      "TANGLISH \n BIBLE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "We are very happy to present you first ever Online Bible in Tanglish. We hope this will help you to read Tamil Bible without any barrier.",
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 30,),
                    MaterialButton(
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 40.0),
                        child: Text(
                          "Start Reading",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 200,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  "bible.png",
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
                      "TANGLISH \n BIBLE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "We are very happy to present you first ever Online Bible in Tanglish. We hope this will help you to read Tamil Bible without any barrier.",
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 30,),
                    MaterialButton(

                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 40.0),
                        child: Text(
                          "Start Reading",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 200,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  "bible.png",
                  width: constraints.biggest.width/2,
                  //height: ,
                ),
              ),

            ],
          );
        }
      },
    );
  }


}