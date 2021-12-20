import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:tanglish_bible_web/verse.dart';

import 'footer.dart';
import 'navbar.dart';

class ChapterIndex extends StatelessWidget {
  final bookName;
  const ChapterIndex({Key? key, required this.bookName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List<Books>> ReadJsonData() async{
      final jsondata = await rootBundle.rootBundle.loadString('json/$bookName.json'.replaceAll(' ', ''));
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
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verse(vbookName: items[index].tBook.toString(),)));

                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child:
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(width: 35,),
                                    Text(items[index].tBook.toString().replaceAll('-', ' '), style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),)
                                  ],
                                ),
                              ),
                            ),
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
    tBook=json['Chapters'];
    eBook==json['Ebook'];
  }


}