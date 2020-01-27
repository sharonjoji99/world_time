import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
int counter =1;

//    //Simulatin network request and delay
//    String username = await Future.delayed(Duration(seconds: 3),(){
//      print('sharon');
//      return 'sharon';
//
//    });
//
//    //Simulatin network request and delay
//    String bio = await Future.delayed(Duration(seconds: 2),(){
//      print('the bestesttt dancer');
//      return ('Bio');
//    });
//
//    print('username: $username  \n Bio: $bio');



  //above code is already async


  @override
  Widget build(BuildContext context) {
    print('Build Function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose location '),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter+=1;
          });
        },
        child: Text('Counter is $counter'),
      )
    );
  }
}
