import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:world_time/services/world_time.dart';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

  String time='loading';

 void setupWorldTime() async{
   WorldTime instance=WorldTime(location: 'Berlin' ,flag: 'germany.png',url: 'Europe/Berlin' );
   await instance.getTime();
   print(instance.time);
   setState(() {
     time=instance.time;
   });


 }


  @override
  void initState(){
    super.initState();
    setupWorldTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(time),
      )
    );
  }
}
