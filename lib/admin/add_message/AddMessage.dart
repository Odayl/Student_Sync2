import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:student_sync/data/branche.dart';
import 'package:student_sync/data/groupe.dart';
import 'package:student_sync/data/niveau.dart';
class AddMessage extends StatefulWidget {
  const AddMessage({super.key});

  @override
  State<AddMessage> createState() => _AddMessageState();
}

class _AddMessageState extends State<AddMessage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Envoyer Message",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.w900,
          letterSpacing: 1,
        ),
      )),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          // margin: EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "BRANCHE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(

                  // tileColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),

                  onTap: () {
                    // showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return const Branche();
                    //   },
                    // );
                    Navigator.of(context).pushNamed('addMess2');
                  },
                  title: const Text(
                    "Sélectionnez la Branche",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),
              const Text(
                "NIVEAU",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  // tileColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),

                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Niveau();
                      },
                    );
                  },
                  title: const Text(
                    "Sélectionnez le Niveau",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "GROUPE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 16),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  // tileColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),

                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Groupe();
                      },
                    );
                  },
                  title: const Text(
                    "Sélectionnez le Groupe",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "SUJET",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 5),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding: const EdgeInsets.all(10),
                  hintText: "Title",
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                maxLines: 1,
                maxLength: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "CENTENT",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding: const EdgeInsets.all(10),
                  hintText: "écrire ici",
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.black,
                maxLines: 10,
                maxLength: 1000,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15)),
                      child: const Text("Annuler")),
                  ElevatedButton(
                      onPressed: () {
                        AwesomeDialog(
                            context: context,
                            dialogType: DialogType.success,
                            animType: AnimType.rightSlide,
                            title: 'Message Envoyer',
                           // desc: 'Dialog description here.............',
                        //    btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                        )..show();
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15)),
                      child: const Text("Envoyer")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Branche extends StatefulWidget {
  const Branche({super.key});

  @override
  State<Branche> createState() => _BrancheState();
}

class _BrancheState extends State<Branche> {


  // List<Map> branche = [
  //   {"branche": "tout Branches", "checked": false},
  //   {"branche": "Génie Informatique", "checked": false},
  //   {"branche": "Genie mécanique", "checked": false},
  //   {"branche": "Genie électrique", "checked": false},
  //   {"branche": "Electrotechnique", "checked": false},
  //   {"branche": "Phisique", "checked": false},
  //   {"branche": "Math", "checked": false},
  //   {"branche": "Préparatoire", "checked": false},
  //   {"branche": "Mécatronique", "checked": false},
  // ];
 BrancheData br = BrancheData();


  @override

  Widget build(BuildContext context) {
List getbranche= br.getBranche;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.black,
      elevation: 20,
      surfaceTintColor: Colors.white,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 20),
          alignment: Alignment.topLeft,
          child: const Text(
            "selectionner la classe",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: getbranche.length,
            itemBuilder: (context, index) {
              return CheckboxListTile(
                value: getbranche[index]["checked"],
                onChanged: (value) {
                  setState(
                    () {
                      getbranche[index]["checked"] = value!;
                  //    var save = branche[index]["checked"];
                      // print( branche[index]["checked"]);

                    },

                  );

                },
                title: Text("${getbranche[index]["branche"]}"),
              );
            },
          ),
        ),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const SizedBox(
                  width: 100,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Annuler",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const SizedBox(
                  width: 100,
                  child: Text(
                    textAlign: TextAlign.center,
                    "OK",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class Niveau extends StatefulWidget {
  const Niveau({super.key});



  @override
  State<Niveau> createState() => _NiveauState();
}

class _NiveauState extends State<Niveau> {



  @override
  Widget build(BuildContext context) {

    NiveauData nv =   NiveauData();

    List getniveau = nv.getNv;

    return Dialog(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.black,
      elevation: 20,
      surfaceTintColor: Colors.white,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 20),
          alignment: Alignment.topLeft,
          child: const Text(
            "selectionner le Niveau",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return CheckboxListTile(
                value: getniveau[index]["checked"],
                onChanged: (val) {
                  setState(() {
                    getniveau[index]["checked"] = val!;
                  });
                },
                title: Text("${getniveau[index]["niveau"]}"),
              );
            },
            itemCount: getniveau.length,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const SizedBox(
                  width: 100,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Annuler",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const SizedBox(
                  width: 100,
                  child: Text(
                    textAlign: TextAlign.center,
                    "OK",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class Groupe extends StatefulWidget {
  const Groupe({super.key});

  @override
  State<Groupe> createState() => _GroupeState();
}

class _GroupeState extends State<Groupe> {

  GroupeData gr = GroupeData();

  @override

  Widget build(BuildContext context) {
    List getgroupe = gr.getGroupe;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.black,
      elevation: 20,
      surfaceTintColor: Colors.white,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 20),
          alignment: Alignment.topLeft,
          child: const Text(
            "selectionner le Groupe",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return CheckboxListTile(
                value: getgroupe[index]["checked"],
                onChanged: (val) {
                  setState(() {
                    getgroupe[index]["checked"] = val!;
                    //print(groupes);
                  });
                },
                title: Text("${getgroupe[index]["groupe"]}"),
              );
            },
            itemCount: getgroupe.length,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const SizedBox(
                  width: 100,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Annuler",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const SizedBox(
                  width: 100,
                  child: Text(
                    textAlign: TextAlign.center,
                    "OK",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
