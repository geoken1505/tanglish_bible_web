import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black12,

      ),

        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Tanglish Bible © Copyright 2021 | All Rights Reserved.', style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
          ],
        ),

    );
  }
}
