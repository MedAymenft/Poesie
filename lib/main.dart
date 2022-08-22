// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  Project2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Project2 extends StatefulWidget {
  const Project2({Key? key}) : super(key: key);

  

  @override
  State<Project2> createState() => _Project2State();
}

class _Project2State extends State<Project2> {

  List verse = [
    {"line1":"لا يَحمِلُ الحِقدَ مَن تَعلو بِهِ الرُتَبُ",
    "line2":"وَلا يَنالُ العُلا مَن طَبعُهُ الغَضَبُ"
    },
    {"line1":"إِنَّ الأَفاعي وَإِن لانَت مَلامِسُها",
    "line2":"عِندَ التَقَلُّبِ في  أَنيابِها العَطَبُ"
    },
    {"line1":"لا تَقتَضي الدَينَ إِلّا بِالقَنا الذُبُلِ",
    "line2":"وَلا تُحَكِّم سِوى الأَسيافِ  في القُلَلِ"
    },
    {"line1":"وَلا تُجاوِر لِئاماً ذَلَّ جارُهُمُ",
    "line2":"وَخَلِّهِم في عِراصِ  الدارِ وَاِرتَحِلِ"
    },
    {"line1":"مَا أبْصرت عيناي مثلَكِ ظبيةً",
    "line2":"بالنّهدِ تَطعنُ والملاحظ تضربُ"
    },
  ];

  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          child: Column(children: [
            Container(child: Text(verse[myIndex]["line1"],style: TextStyle(fontSize: 29,color:Color.fromARGB(255, 100, 16, 44),fontWeight: FontWeight.bold),),width: double.infinity,margin: EdgeInsets.only(left:50),),
            SizedBox(height:20),
            Container(child: Text(verse[myIndex]["line2"],style: TextStyle(fontSize: 26,color:Color.fromARGB(255, 100, 16, 44))),width: double.infinity,margin: EdgeInsets.only(left:60),),
            SizedBox(height:30),
            Row(children: [
              FloatingActionButton(onPressed: (){setState(() {
                            
                                                myIndex --;
                                                print(myIndex); 
                            if(myIndex<0){
                              myIndex=verse.length-1;
                            }
              });},
                                    child:Icon(Icons.arrow_left,size: 50,),
                                    backgroundColor: Color.fromARGB(255, 245, 125, 165),),
              SizedBox(width:20),
              FloatingActionButton(onPressed: (){setState(() {
                                              if(myIndex<verse.length){
                                                myIndex ++;
                                                print(myIndex); }
                                              if(myIndex==verse.length){
                                                myIndex=0;
                                              }

              });},
                                    child:Icon(Icons.arrow_right,size: 50),
                                    backgroundColor: Color.fromARGB(255, 245, 125, 165)),



            ],
            
            mainAxisAlignment: MainAxisAlignment.center,)



            
          ],
            
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ),
      ),

    );
  }
}


