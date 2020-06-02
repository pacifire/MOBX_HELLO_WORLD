import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mob_x_implementation/store/counter.dart';

class CounterPage extends StatelessWidget {

  final Counter counter = Counter();


  @override
  Widget build(BuildContext context) {

   
    FlatButton incrementButton = FlatButton(onPressed: () => counter.showData(), child: Text("+"));


    return Scaffold(
      
      body: Center(child: Column(
        children:[
          Observer(builder: (_) => Text(counter.count.toString().trim())),
          incrementButton
        ]
      ),),      
    );
  }
}