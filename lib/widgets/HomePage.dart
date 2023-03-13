import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ma première application"),leading: Icon(Icons.add_task),),
      body:Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              child: CircleAvatar(
              child: Image.asset("assets/images/avatar_julien.jpg"),
            ),
            ),
            Text("Avatar Julien",style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold),)
          ],
        )
      ),
    floatingActionButton: FloatingActionButton(
      child:Icon(Icons.access_alarm),
      onPressed:(){
      print("Boutton appuyer");
    }),

    );
  }
}