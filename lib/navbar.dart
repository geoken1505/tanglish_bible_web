import 'package:flutter/material.dart';
import 'package:tanglish_bible_web/about_us.dart';
import 'dart:js' as js;

import 'package:tanglish_bible_web/contact.dart';

import 'main.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Row(
              children: [
                Image.asset('bible.png', height: 40, width: 40,),
                SizedBox(width: 10,),
                Text(
                  "TANGLISH BIBLE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                InkWell(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

                  },
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text(
                    "About Us",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text(
                    "Contact",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contact()));
                  },

                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    js.context.callMethod('open', ['http://tanglishbible.com/desktop', '_blank']);
                  },
                  child: Text(
                    "Resource",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
      child: Container(
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('bible.png', height: MediaQuery.of(context).size.width/13, width: MediaQuery.of(context).size.width/13,),
              //SizedBox(width: 50,),
              Text(
                "TANGLISH BIBLE",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white, fontSize: MediaQuery.of(context).size.width/20),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text(
                    "About Us",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text(
                    "Contact",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Contact()));
                  },
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

