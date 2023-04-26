import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class FormulairePage extends StatefulWidget {
   FormulairePage({super.key});
  

 




  @override
  State<FormulairePage> createState() => _FormulairePageState();
}

class _FormulairePageState extends State<FormulairePage> {

    Map<String,bool> langages = {
      "python":false,
      "flutter":false,
      "javascript":false,
      "php":false
    };

   late TextEditingController controller;
   String nom = "";
   String descriptif = "";
   bool switchValue = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
    controller.addListener(_ecouteurText);
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  void _ecouteurText(){
    setState(() {
      descriptif = controller.text;
      print(descriptif);
    });

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Formulaire")),
    body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Text("Mon Heros, mon petit robot", style: TextStyle(fontFamily:"Delicious", fontSize:40),),
        ),
        SizedBox(height: 150,
        width: 150,
        child: CircleAvatar(backgroundImage: AssetImage('assets/images/robot.png'),),
    
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
          child: TextField(
            onChanged: (value){
              setState(() {
                nom = value;
                print(nom);
              });
            },
            decoration: InputDecoration(hintText: "Entez le nom du personnage",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
          child: TextField(
            controller: controller,
          
            decoration: InputDecoration(hintText: "Entez le descriptif du personnage",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Padding(padding:const EdgeInsets.all(10),
          child: Row(children: [
            Text((switchValue ? "Electrique" : "Thermique")),
            Switch(value: switchValue,
            onChanged:(bool){
              setState(() {
                switchValue = bool;
              });
    
            })
    
          ],
        )),
        Padding(padding:EdgeInsets.all(10),
        child: constructionListDeLangages(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Je m'appelle ${nom}",style: TextStyle(fontFamily:"delicious",fontSize: 16),),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Ma description : ${descriptif}"),
        ),
        Padding(padding: EdgeInsets.all(5),
        child: recapLangages(),)
    
    
    
    
      ],),
    )


    );
  }

Column constructionListDeLangages(){
  List<Widget> items = [];
  langages.forEach((langageKey,coche) {
    Widget row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(langageKey),
      Checkbox(value: coche, onChanged: ((newValue){
        // la méthode setState
        setState(() {
          langages[langageKey] = newValue ?? false;
        });
      }))

    ],);
    items.add(row);
  });
  return Column(children: items,);

}

Column recapLangages(){
  List<Widget> itemsLangages = []; // on déclare un tableau pour ranger des cellules
  langages.forEach((langageKey, value) {  // on parcours un dictionnaire 
    if (value== true){
      
      Widget row = Row(
         mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
        Text(langageKey)
      ]);
      itemsLangages.add(row);
    }
   
    
  });
   return Column(children: itemsLangages);
}

}

