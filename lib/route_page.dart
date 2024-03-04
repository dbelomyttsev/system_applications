import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/firstpage');
                },
                child: Text('First Page'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    textStyle: TextStyle(fontSize: 20),
                    minimumSize: Size(175, 50)
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/secondpage');
                },
                child: Text('Second Page'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    textStyle: TextStyle(fontSize: 20),
                    minimumSize: Size(175, 50)
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/thirdpage');
                },
                child: Text('Third Page'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                  textStyle: TextStyle(fontSize: 20),
                  minimumSize: Size(175, 50),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/fourthpage');
                },
                child: Text('Fourth Page'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                  textStyle: TextStyle(fontSize: 20),
                  minimumSize: Size(175, 50),
                ),
              ),
              TextButton(
                onPressed: (){
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                child: Text('Exit'),
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                  minimumSize: Size(175, 50),
                  foregroundColor: Colors.purple,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}