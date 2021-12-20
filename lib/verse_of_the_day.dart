import 'package:flutter/material.dart';

class VerseOfTheDay extends StatefulWidget {
  const VerseOfTheDay({Key? key}) : super(key: key);

  @override
  _VerseOfTheDayState createState() => _VerseOfTheDayState();
}

class _VerseOfTheDayState extends State<VerseOfTheDay> {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 1200) {
      return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 350,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: DecorationImage(
                  image: AssetImage('verse.png'),
                  fit: BoxFit.fill,
                ),
                color: Colors.white,
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      );
    }
    else {
      return Container(
        child: Column(
          children: <Widget>[
            Container(

              height: 350,
              width: 750,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('verse.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(24.0),
                color: Colors.white,
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      );
    }
  }
}
