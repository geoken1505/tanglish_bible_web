import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'footer.dart';
import 'navbar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Column(
        children: <Widget>[
          Navbar(),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height-150,
            width: MediaQuery.of(context).size.width,
            child:

            SingleChildScrollView(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 800) {
                        return
                         Column(

                           children: [
                             Material(
                                elevation: 100,
                               color: Colors.black,
                               borderRadius: BorderRadius.circular(24),
                               child: Container(
                                 width: constraints.biggest.width-500,
                                 height: MediaQuery.of(context).size.height-300,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(24),
                                   gradient: LinearGradient(
                                     end: Alignment.topLeft,
                                     begin: Alignment.bottomRight,
                                     colors: [
                                       Colors.black,
                                       Colors.grey,
                                     ],
                                   ),
                                   color: Colors.white,
                                 ),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: <Widget>[
                                     SizedBox(height: 40,),
                                     Text('CONTACT US', style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 35,
                                       fontWeight: FontWeight.bold
                                     ),),
                                     SizedBox(height: 40,),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                         SizedBox(width: 100,),
                                         Material(


                                           elevation: 10,
                                           color: Colors.indigo,
                                           borderRadius: BorderRadius.circular(24),
                                           child: Container(
                                             height:MediaQuery.of(context).size.height-550,
                                               alignment: Alignment.center,
                                               width: (constraints.biggest.width-500)-500,
                                             decoration: BoxDecoration(
                                               color: Colors.indigo,
                                               borderRadius: BorderRadius.circular(24),
                                               
                                             ),
                                             child:
                                             Column(

                                               mainAxisAlignment: MainAxisAlignment.center,
                                               crossAxisAlignment: CrossAxisAlignment.center,
                                               children: [
                                                 Row(
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                   crossAxisAlignment: CrossAxisAlignment.center,
                                                   children: <Widget>[
                                                     SizedBox(width: 30,),
                                                     Image.asset('email.png', height: 40, width: 40,),
                                                     SizedBox(width: 10,),
                                                     Text('mybible2021@gmail.com', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),)
                                                   ],
                                                 ),
                                                 SizedBox(height: 50,),
                                                 Row(
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                   crossAxisAlignment: CrossAxisAlignment.center,
                                                   children: <Widget>[
                                                     SizedBox(width: 30,),
                                                     Image.asset('whatsapp.png', height: 40, width: 40,),
                                                     SizedBox(width: 10,),
                                                     Text('+91 7820815208', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),)
                                                   ],
                                                 ),
                                                 SizedBox(height: 50,),
                                                 Row(
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                   crossAxisAlignment: CrossAxisAlignment.center,
                                                   children: <Widget>[
                                                     SizedBox(width: 30,),
                                                     Image.asset('web.png', height: 40, width: 40,),
                                                     SizedBox(width: 10,),
                                                     Text('www.tanglishbible.com', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),)
                                                   ],
                                                 ),
                                                 SizedBox(height: 80,),
                                                 Material(
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.circular(35),
                                                   elevation: 10,
                                                   child: Container(
                                                     decoration: BoxDecoration(
                                                       color: Colors.white,
                                                       borderRadius: BorderRadius.circular(35),


                                                     ),
                                                     height: 70,
                                                     width: 250,
                                                     child: Row(
                                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                       children: <Widget>[

                                                         InkWell(
                                                           onTap: (){

                                                           },
                                                           child: Icon(Icons.facebook, color: Colors.indigo, size: 40,),
                                                         ),
                                                         InkWell(
                                                           onTap: (){

                                                           },
                                                           child: Icon(FontAwesome.twitter, color: Colors.indigo, size: 40,),
                                                         ),
                                                         InkWell(
                                                           onTap: (){

                                                           },
                                                           child: Icon(FontAwesome.instagram, color: Colors.indigo, size: 40,),
                                                         )
                                                       ],
                                                     ),
                                                   ),
                                                 )
                                               ],
                                             ),
                                           ),
                                         ),
                                         SizedBox(width: 100,),

                                       ],
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           ],
                         );
                      }
                      else {
                        return
                          Column(

                            children: [
                              Material(
                                elevation: 100,
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(24),
                                child: Container(
                                  width: constraints.biggest.width/2,
                                  height: MediaQuery.of(context).size.height/2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    gradient: LinearGradient(
                                      end: Alignment.topLeft,
                                      begin: Alignment.bottomRight,
                                      colors: [
                                        Colors.black,
                                        Colors.grey,
                                      ],
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(height: 40,),
                                      Text('CONTACT US', style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold
                                      ),),

                                      SizedBox(height: 40,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(width: 30,),
                                          Image.asset('email.png', height: 25, width: 25,),
                                          SizedBox(width: 10,),
                                          Text('mybible2021@gmail.com', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),)
                                        ],
                                      ),
                                      SizedBox(height: 50,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(width: 30,),
                                          Image.asset('whatsapp.png', height: 25, width: 25,),
                                          SizedBox(width: 10,),
                                          Text('+91 7820815208', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),)
                                        ],
                                      ),
                                      SizedBox(height: 50,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(width: 30,),
                                          Image.asset('web.png', height: 25, width: 25,),
                                          SizedBox(width: 10,),
                                          Text('www.tanglishbible.com', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),)
                                        ],
                                      ),
                                      SizedBox(height: 80,),

                                    ],
                                  ),
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