import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'fetchingwebdata.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 TextEditingController tcontroller=TextEditingController();
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        backgroundColor:Color(0x70232325),
        title:Text('WebScraper')
      ),
      body:Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextFormField(
                controller:tcontroller,
              decoration:InputDecoration(
                contentPadding: EdgeInsets.only(top:20,bottom:12,left:30,right:-45),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:BorderSide(
                    width:2,
                    color:Colors.red,
                  ),
                ),
              )
              ),
            ),
          ),
          SizedBox(height:34),
          Padding(
            padding: EdgeInsets.only(left:32,right:32),
            child: InkWell(
              onTap:(){
    getwebData();
    Timer(Duration(seconds: 1),(){
    showDialog(context: context, builder: (BuildContext context){
    return SafeArea(
    child: Container(
    height:90,
    width:80,
    color:Colors.white,
    child:Column(
    children: [
    Expanded(
    flex:2,
    child: SingleChildScrollView(
    child: Text(data.body,style:TextStyle(
    color:Colors.black,fontSize:12)),
    ),
    ),


    Material(
    color:Colors.blue,
    child: Center(child: InkWell(
    onTap:(){
    Navigator.pop(context);
    },child: Text('cancel',style:TextStyle(color:Colors.white,fontSize:19)))))
    ],
    )
    ),
    );
    });
    });
    },
              child: Container(
                decoration:BoxDecoration(borderRadius:BorderRadius.circular(18),color:Colors.black,),
                 height:60,
                width:double.infinity,
                child:Center(child: Text('Scrape',style:TextStyle(color:Colors.white)))
              ),
            ),
          )
        ]
      )
    );
  }
}
