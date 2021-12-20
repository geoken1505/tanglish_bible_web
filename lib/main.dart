import 'package:flutter/material.dart';
import 'package:tanglish_bible_web/home_screen.dart';
import 'package:tanglish_bible_web/navbar.dart';
import 'package:tanglish_bible_web/landing_page.dart';
import 'package:tanglish_bible_web/home_page.dart';
import 'package:tanglish_bible_web/resources.dart';
import 'package:tanglish_bible_web/verse_of_the_day.dart';
import 'package:tanglish_bible_web/footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tanglish Bible',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Container(

        child: SingleChildScrollView(
          child:
          Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                child:
                Column(
                  children: [
                    LandingPage(),

                  ],
                ),

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('FEATURED',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                  )
                ],
              ),
              SizedBox(height: 50,),
              Resource(),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('VERSE OF THE DAY',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(height: 50,),
              VerseOfTheDay(),
              SizedBox(height: 50,),
              Footer()

            ],
          ),
        ),
      ),
    );
  }
}