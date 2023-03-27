import 'package:flutter/material.dart';
import 'package:live1_flutter_parlarpratique27fevrier2023/widgets/Live2Page.dart';

import 'Live3Page.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Ma première application")),
      drawer: Drawer(child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(children: [
            CircleAvatar(backgroundImage: AssetImage('assets/images/soleil.png'),
            radius: 50,),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Text('Menu Flutter',style: TextStyle(
                fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),),
            )
          ]),
        ),
        ListTile(title:Text("Live1"),
        // le callback 
        onTap: (){
          
        },
        
        ),
        Divider(color: Colors.black,thickness: 2.0,),
        ListTile(title: Text("Live2"),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Live2Page()));
        },),
        Divider(color: Colors.black,thickness: 2.0,),
        ListTile(title:Text("live3"),
        onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Live3Page()));
        },
        ),
        Divider(color: Colors.black,thickness: 2.0,),



      ]), ),
      body:Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              child: CircleAvatar(
              child: Image.asset("assets/images/soleil.png"),
            ),
            ),
            Text("Soleil",style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold),)
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