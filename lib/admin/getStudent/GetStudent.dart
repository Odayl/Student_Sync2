import 'package:flutter/material.dart';

class GetStudent extends StatefulWidget {
  const GetStudent({super.key});

  @override
  State<GetStudent> createState() => _GetStudentState();
}

class _GetStudentState extends State<GetStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Recherche",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.w900,
              letterSpacing: 1,
            ),
          ),actions: [
        IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: Icon(Icons.search),
            iconSize: 25),
      ]),
      body: Column(
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
          SizedBox(height: 40,),
          Center(
            child: ElevatedButton(
              onPressed: (){}, child: Text("Chercher"),style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 100),backgroundColor:Colors.green,foregroundColor: Colors.white,),
          ))
        ],
      ),
    );
  }
}
class CustomSearchDelegate extends SearchDelegate {
  List name = [
    "Oday",
    "Hamza",
    "2023Jws",
    "Ali",
    "Salah",
    "ginie informatique",
    "Ali bousalem",
    "preparatoire",
    "D",
    "5éme",
    "",
    ""
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {

    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override

  Widget buildResults(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return          SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 100,
              width: 100,

              child: Image.asset("images/user.png")),
          ListTile(
            title: const Text(
              "Matricule",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("2022GL-HJK"),
            leading: const Icon(Icons.perm_identity),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: const Text(
              "Nom",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("Hamza ben Aicha"),
            leading: const Icon(Icons.perm_identity),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: const Text(
              "Classe",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("4éme GL"),
            leading: const Icon(Icons.perm_identity),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: const Text(
              "Cin/Passport",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("11819596"),
            leading: const Icon(Icons.perm_identity),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: const Text(
              "Nationalité",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("Tunisienne"),
            leading: const Icon(Icons.flag),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: const Text(
              "Date,Lien de naissance",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("14/10/2000 , Mounastir"),
            leading: const Icon(Icons.calendar_month),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: const Text(
              "Adresse",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("06 rue Mdina"),
            leading: const Icon(Icons.home_filled),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: const Text(
              "Gouvernent",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("Mounastir"),
            leading: const Icon(Icons.location_city),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: const Text(
              "Tél / GSM",
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text("216 50997273"),
            leading: const Icon(Icons.phone_android),
            tileColor: Colors.grey[300],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Modifier"),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white,padding: EdgeInsets.symmetric(horizontal: 50))),
              ElevatedButton(onPressed: (){}, child: const Text("Suprimer"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red,foregroundColor: Colors.white,padding: EdgeInsets.symmetric(horizontal: 50)),),
            ],
          ),    const SizedBox(
            height: 20,
          ),
        ],

      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filtername = name.where((element) => element.contains(query)).toList();
    return ListView.builder(
        itemCount: query == "" ? name.length : filtername.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              query = query == "" ? name[i] : filtername[i];
              showResults(context);
            },
            child: ListTile(

                title:Text("${query == "" ? name[i] : filtername[i]}") ,
                 ),
          );
        });
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



