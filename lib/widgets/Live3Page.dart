import 'package:flutter/material.dart';


class Live3Page extends StatelessWidget {
  const Live3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Live3")),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Expanded(
        flex: 1,   // 1/4
        child: Container(
         child:Center(child:  Text("Zone Rouge",
         style: TextStyle(fontFamily: "delicious",fontSize: 25),
         ),),
        
          color:Colors.red
        ),
      ),
       Expanded(
        flex: 2,   // 2/4
         child: Container(
          child:Center(child:  Text("Zone Verte",
         style: TextStyle(fontFamily: "delicious",fontSize: 25),
         ),),
          color:Colors.green
             ),
       ),
       Expanded(  // 1/4
        flex: 1,
         child: Container(
            child:Center(child:  Text("Zone Jaune",
         style: TextStyle(fontFamily: "delicious",fontSize: 25),
         ),),
          
          
          
            
          color:Colors.yellow
             ),
       ),
    ],)
    );
  }
}