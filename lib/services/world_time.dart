import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  String location; // location name for ui
  String time;  //final time
  String flag;  //url to asset file for country flag
  String url; //api end point location

  WorldTime({this.location,this.flag,this.url}){

  }

 Future<void> getTime() async{


    //make the request
    Response response =await get('http://worldtimeapi.org/api/timezones/$url');

    Map data =jsonDecode(response.body);


    // get properties from data
    String dateTime = data['datetime'];
    String offset=data['utc_offset'].substring(1,3);
    //print(dateTime);
    print(offset);

    DateTime now=DateTime.parse(dateTime);
    now=now.add(Duration(hours:int.parse(offset)));


    time=now.toString();
  }



}

