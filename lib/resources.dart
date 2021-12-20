import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tanglish_bible_web/app_landing.dart';
import 'package:tanglish_bible_web/home_screen.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:tanglish_bible_web/navigate.dart';
import 'dart:js' as js;
class Resource extends StatelessWidget {



  @override
  Widget build(BuildContext context, ) {
    print (MediaQuery.of(context).size.width);
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1600) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(

                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(

                      child: Container(

                        alignment: Alignment.center,
                        child:
                        Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('bible-read.png', height: 100, width: 150,),
                            SizedBox(height: 50,),
                            Text('READ BIBLE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],
                        ),

                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),

                      onTap: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
                      },
                      hoverColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),

              ),
              SizedBox(width: 250),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('slideshow.png', height: 100, width: 160,),
                            SizedBox(height: 50,),
                            Text('SLIDESHOW VERSE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],

                        ),

                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),
                      onTap: (){
                        js.context.callMethod('open', ['http://tanglishbible.com/slide', '_blank']);
                      },
                      hoverColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
              SizedBox(width: 250),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('smartphone.png', height: 100, width: 160,),
                            SizedBox(height: 50,),
                            Text('DOWNLOAD OUR APP', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],

                        ),
                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppLandingPage()));
                      },
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
            ],
          );
        }
        else if(MediaQuery.of(context).size.width < 1600 && constraints.maxWidth > 1100){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 50,),
              Container(

                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(

                      child: Container(

                        alignment: Alignment.center,
                        child:
                        Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('bible-read.png', height: 80, width: 100,),
                            SizedBox(height: 30,),
                            Text('READ BIBLE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],
                        ),

                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),

                      onTap: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
                      },
                      hoverColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),

              ),
              SizedBox(width: 50),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('slideshow.png', height: 80, width: 100,),
                            SizedBox(height: 30,),
                            Text('SLIDESHOW VERSE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],

                        ),

                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),
                      onTap: (){
                        js.context.callMethod('open', ['http://tanglishbible.com/slide', '_blank']);
                      },
                      hoverColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
              SizedBox(width: 50),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('smartphone.png', height: 80, width: 100,),
                            SizedBox(height: 30,),
                            Text('DOWNLOAD OUR APP', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],

                        ),
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppLandingPage()));
                      },
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
            ],
          );
        }
        else if(MediaQuery.of(context).size.width < 1100 && constraints.maxWidth > 850){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 20,),
              Container(

                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(

                      child: Container(

                        alignment: Alignment.center,
                        child:
                        Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('bible-read.png', height: 50, width: 70,),
                            SizedBox(height: 10,),
                            Text('READ BIBLE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],
                        ),

                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),

                      onTap: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
                      },
                      hoverColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),

              ),
              SizedBox(width: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('slideshow.png', height: 50, width: 70,),
                            SizedBox(height: 20,),
                            Text('SLIDESHOW VERSE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],

                        ),

                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),
                      onTap: (){
                        js.context.callMethod('open', ['http://tanglishbible.com/slide', '_blank']);
                      },
                      hoverColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
              SizedBox(width: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('smartphone.png', height: 50, width: 70,),
                            SizedBox(height: 20,),
                            Text('DOWNLOAD OUR APP', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],

                        ),
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppLandingPage()));
                      },
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
            ],
          );
        }
        else {
          return Column(
            children: <Widget>[
              Container(

                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(

                      child: Container(

                        alignment: Alignment.center,
                        child:
                        Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('bible-read.png', height: 100, width: 150,),
                            SizedBox(height: 50,),
                            Text('READ BIBLE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],
                        ),

                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),

                      onTap: (){

                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
                      },
                      hoverColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),

              ),
              SizedBox(width: 250),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('slideshow.png', height: 100, width: 160,),
                            SizedBox(height: 50,),
                            Text('SLIDESHOW VERSE', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],

                        ),

                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),
                      onTap: (){
                        js.context.callMethod('open', ['http://tanglishbible.com/slide', '_blank']);
                      },
                      hoverColor: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
              SizedBox(width: 250),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('smartphone.png', height: 100, width: 160,),
                            SizedBox(height: 50,),
                            Text('DOWNLOAD OUR APP', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Montserrat-SemiBold',
                            ),)
                          ],

                        ),
                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ) ,
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppLandingPage()));
                      },
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),
            ],

            //children: pageChildren(constraints.biggest.width),
          );
        }
      },

    );

  }
  //List<Widget> pageChildren(double width, ) {
  //  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  //  navigatorKey: navigatorKey;

  //  return

 // }
}
void newFunction(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
}
