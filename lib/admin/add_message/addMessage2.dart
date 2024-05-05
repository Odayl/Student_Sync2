import 'package:flutter/material.dart';

import '../../data/branche.dart';

class AddMess extends StatefulWidget {
  const AddMess({super.key});

  @override
  State<AddMess> createState() => _AddMessState();
}

class _AddMessState extends State<AddMess> {
  BrancheData br = BrancheData();


  @override
  Widget build(BuildContext context) {
    List getbranche= br.getBranche;

    return Scaffold(
      appBar: AppBar(title: const Text("Selectionner Branche" ,style: TextStyle(
        color: Colors.blue,
        fontSize: 30,
        fontWeight: FontWeight.w900,
        letterSpacing: 1,
      ),)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children:
              getbranche.map((e){
                  return CheckboxListTile(value: e['checked'], onChanged: (val){
                   setState(() {
                     e['checked']= val ;
                   });
                  },
                title: Text(e['branche']),
              activeColor: Colors.greenAccent,
                    checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              );
                }).toList(),



            ),
            Wrap(direction: Axis.horizontal,

                children:

                getbranche.map((e) {
                  if (e['checked'] == true){
                    return Card(
                      color: Colors.greenAccent,


                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          Text(e['branche']),
                          GestureDetector(onTap: (){
                            setState(() {
                              e['checked']  = !e['checked'] ;
                            });
                          },
                            child: Icon(Icons.delete,color: Colors.white,),)
                        ],
                                            ),
                      ),);
                  }
                  return Container();
                }).toList() ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("Suivant",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 70),backgroundColor: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
