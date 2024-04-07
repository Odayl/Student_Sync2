import 'package:flutter/material.dart';


class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int? index = 0;


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;


    return Scaffold(


      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          color: Colors.grey[300],
          //    color: Colors.blue[300],
          padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: ListTile(
                    onTap: () {

                    },
                    titleTextStyle: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    title: const Text("Admin"),
                    tileColor: Colors.white,
                    leading:
                    CircleAvatar(child: Image.asset('images/user.png')),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 190),
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("addMessage");
                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                            height: 20,
                            width: 10,
                            child: Column(children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 50,
                                    child: Image.asset(
                                      "images/message.png",
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              const Text(

                                "Send Message",
                                style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,),
                                textAlign: TextAlign.center,
                              )
                            ]),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("addNews");
                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              //  border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                            child: Column(children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 50,
                                    child: Image.asset(
                                      "images/news.png",
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              const Text(
                                "Send News",
                                style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 5,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54), textAlign:
                                TextAlign.center,
                              )
                            ]),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {

                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 50,
                                      child: Image.asset(
                                        "images/schedule2.png",
                                        fit: BoxFit.contain,
                                      )),
                                ),
                                const Text(
                                  "Add Schedule",
                                  style: TextStyle(
                                      fontSize: 20,
                                      letterSpacing: 5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54), textAlign:
                                  TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {

                        },
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 50,
                                      child: Image.asset(
                                        "images/doc.png",
                                        fit: BoxFit.contain,
                                      )),
                                ),
                                const Text(
                                  "Documents Request",
                                  style: TextStyle(
                                      fontSize: 20,
                                      letterSpacing: 5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54), textAlign:
                                  TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),

                          child: Container(
                            decoration: const BoxDecoration(
                              // border: Border.all(width: 2),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
