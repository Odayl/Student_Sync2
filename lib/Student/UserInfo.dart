import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("mainScreen");
            },
            icon: const Icon(
              Icons.arrow_back,
            )),
        title: const Text("Profile",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.w900,
              letterSpacing: 1,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      height: 200,
                      width: screenWidth,
                      child: Image.asset(
                        "images/blue.png",
                        fit: BoxFit.fill,
                      )),
                  Positioned(
                    top: 5,
                    right: (screenWidth / 2) - 80,
                    child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "images/user.png",
                        )),
                  ),
                  Positioned(
                    bottom: 10,
                    right: (screenWidth / 2) - 100,
                    child: const Column(
                      children: [
                        Text(
                          "Hamza ben Aicha",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Classe : 4éme génie logiciel",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ListTile(
                    title: const Text(
                      "Cin/Passport",
                      style: TextStyle(color: Colors.blue),
                    ),
                    subtitle: const Text("000000000"),
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
                    subtitle: const Text("**/**/**** , ******"),
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
                    subtitle: const Text("06 rue *********"),
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
                    subtitle: const Text("********"),
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
                    subtitle: const Text("216 ********"),
                    leading: const Icon(Icons.phone_android),
                    tileColor: Colors.grey[300],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
