import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

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
            "Envoyer un Message",
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
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Branche();
                      },
                    );
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
                      onPressed: () {},
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
  List<Map> branche = [
    {"branche": "tout Branches", "checked": false},
    {"branche": "Génie Informatique", "checked": false},
    {"branche": "Genie mécanique", "checked": false},
    {"branche": "Genie électrique", "checked": false},
    {"branche": "Electrotechnique", "checked": false},
    {"branche": "Phisique", "checked": false},
    {"branche": "Math", "checked": false},
    {"branche": "Préparatoire", "checked": false},
    {"branche": "Mécatronique", "checked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.black,
      elevation: 20,
      surfaceTintColor: Colors.white,
      child: Container(
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
              itemCount: branche.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  value: branche[index]["checked"],
                  onChanged: (value) {
                    setState(
                          () {
                        branche[index]["checked"] = value!;
                        // print( branche[index]["checked"]);
                      },
                    );
                  },
                  title: Text("${branche[index]["branche"]}"),
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
      ),
    );
  }
}

class Niveau extends StatefulWidget {
  const Niveau({super.key});

  @override
  State<Niveau> createState() => _NiveauState();
}

class _NiveauState extends State<Niveau> {
  List<Map> niveau = [
    {"niveau": "tout Niveau", "checked": false},
    {"niveau": "1ére Licence ", "checked": false},
    {"niveau": "2éme Licence", "checked": false},
    {"niveau": "3éme Licence", "checked": false},
    {"niveau": "1ére Préparatoire", "checked": false},
    {"niveau": "2éme Préparatoire", "checked": false},
    {"niveau": "1ére master ", "checked": false},
    {"niveau": "2éme master", "checked": false},
    {"niveau": "1ére Ingenieurie", "checked": false},
    {"niveau": "2éme Ingenieurie", "checked": false},
    {"niveau": "3éme Ingenieurie", "checked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.black,
      elevation: 20,
      surfaceTintColor: Colors.white,
      child: Container(
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
                  value: niveau[index]["checked"],
                  onChanged: (val) {
                    setState(() {
                      niveau[index]["checked"] = val!;
                    });
                  },
                  title: Text("${niveau[index]["niveau"]}"),
                );
              },
              itemCount: niveau.length,
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
      ),
    );
  }
}

class Groupe extends StatefulWidget {
  const Groupe({super.key});

  @override
  State<Groupe> createState() => _GroupeState();
}

class _GroupeState extends State<Groupe> {
  List groupe = [
    {"groupe": "All groupes", "checked": false},
    {"groupe": "A", "checked": false},
    {"groupe": "B", "checked": false},
    {"groupe": "C", "checked": false},
    {"groupe": "D", "checked": false},
    {"groupe": "E", "checked": false},
    {"groupe": "F", "checked": false},
    {"groupe": "G", "checked": false},
    {"groupe": "H", "checked": false},
    {"groupe": "Q", "checked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.black,
      elevation: 20,
      surfaceTintColor: Colors.white,
      child: Container(
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
                  value: groupe[index]["checked"],
                  onChanged: (val) {
                    setState(() {
                      groupe[index]["checked"] = val!;
                      //print(groupes);
                    });
                  },
                  title: Text("${groupe[index]["groupe"]}"),
                );
              },
              itemCount: groupe.length,
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
      ),
    );
  }
}
