import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/services.dart';

import 'footer.dart';
import 'navbar.dart';

class Verse extends StatelessWidget {


  final vbookName;
  const Verse({Key? key, required this.vbookName}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    Future<List<Books>> ReadJsonData() async{
      final jsondata = await rootBundle.rootBundle.loadString('json/$vbookName.json'.replaceAll(' ', ''));
      final list = json.decode(jsondata) as List<dynamic>;
      return list.map((e) => Books.fromJson(e)).toList();
    }

    final sreenWidth = MediaQuery.of(context).size.width;

    var screenValue= sreenWidth/250;


    return Scaffold(
      backgroundColor: Colors.grey[700],
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Navbar(),
          Container(
            child: Text('$vbookName'.replaceAll('-', ' '), style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white
            ),),
          ),
          //SizedBox(height: 30,),
          Expanded(
            flex: 1,
            child:
            FutureBuilder(

              future: ReadJsonData(),
              builder: (context, data){
                if(data.hasError){
                  return Center(child: Text("${data.error}"),);
                }
                else if (data.hasData){
                  var items = data.data as List<Books>;
                  return
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(15.0),


                            child:

                             ListTile(
                                title: Text(items[index].tBook.toString().toUpperCase(), style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,

                                ),),

                          ),
                           
                        );
                      },
                    );;
                }
                else{
                  return Center(child: CircularProgressIndicator(),);
                }
              },

            ),
          ),

        ],
      ),);

  }
}

class Books{
  String? tBook;
  String? eBook;
  String? id;

  Books(this.tBook, this.eBook, this.id);
  Books.fromJson(Map<String,dynamic> json){
    id=json['Ebook'];
    tBook=json['Verses'];
    eBook==json['Ebook'];
  }


}