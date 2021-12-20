import 'package:flutter/material.dart';
import 'package:tanglish_bible_web/home_screen.dart';
class Navigate extends StatefulWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  _NavigateState createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  @override
  Widget build(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BibleHomeScreen()));
    return Container(

    );
  }
}
