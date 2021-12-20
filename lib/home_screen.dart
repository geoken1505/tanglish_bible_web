import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:tanglish_bible_web/chapter_index.dart';

import 'footer.dart';
import 'navbar.dart';
class BibleHomeScreen extends StatefulWidget {
  const BibleHomeScreen({Key? key}) : super(key: key);

  @override
  _BibleHomeScreenState createState() => _BibleHomeScreenState();
}



class _BibleHomeScreenState extends State<BibleHomeScreen> {

  @override
  Widget build(BuildContext context) {
    Future<List<Books>> ReadJsonData() async{
      final jsondata = await rootBundle.rootBundle.loadString('json/bible_index.json');
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
                        GridView.builder(
                        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: screenValue.floor()),
                        itemCount: items.length,

                        itemBuilder: (context, index){return
                          Container(

                            alignment: Alignment.center,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Container(

                                    height: 200,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.white,

                                      borderRadius: BorderRadius.circular(20),
                                    ),

                                    child:
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChapterIndex(bookName: items[index].tBook.toString(),)));
                                      },
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                                begin: Alignment.bottomRight,
                                                colors: [
                                                  Colors.black.withOpacity(.3),
                                                  Colors.black.withOpacity(.1)
                                                ]
                                            )
                                        ),

                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset('bible.png', height: 120, width: 120,),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(items[index].tBook.toString().replaceAll('-', ' '),
                                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,
                                                  color: Colors.grey[700]
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(items[index].id.toString(),
                                              style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12,
                                                  color: Colors.grey[600]
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );},




                      );
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
    tBook=json['Tbook'];
    eBook==json['Ebook'];
  }


}

