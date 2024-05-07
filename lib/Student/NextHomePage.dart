import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:student_sync/Student/HomePage.dart';
import 'package:student_sync/Student/MessageDetail.dart';
import 'package:student_sync/Student/NewsDelail.dart';
import 'package:student_sync/Student/UserInfo.dart';

class NextPageHome extends StatefulWidget {
  const NextPageHome({super.key});

  @override
  State<NextPageHome> createState() => _NextPageHomeState();
}

class _NextPageHomeState extends State<NextPageHome>
    with TickerProviderStateMixin {
  GlobalKey key1 = GlobalKey();
  int index = 0;

  List afficheMessage = [
    {
      "title": "Absence Msr Mohamed Aribi",
      "date": "15/4/2024",
      "message": " L'ensignent est été absent ... ",
    },
    {
      "title": "Changement de salle ",
      "date": "13/04/2024",
      "message": "la salle de tp Lab 203...",
    },
    {
      "title": "Absence Msr Mohamed Aribi",
      "date": "12/10/2022",
      "message": " L'ensignent est été absent ...",
    },
    {
      "title": "Changement d'emploi",
      "date": "12/10/2022",
      "message": "L'emploi va modifier ...",
    },
    {
      "title": "title5",
      "date": "10/10/2014",
      "message": " here see one line of message",
    },
    {
      "title": "title6",
      "date": "10/10/2017",
      "message": " here see one line of message",
    },
    {
      "title": "title7",
      "date": "3/07/2013",
      "message": " here see one line of message",
    }
  ];
  List afficheNews = [
    {
      "title": "Certification Journey",
      "date": "10/04/2024",
      "message": "Chers étudients, Dans l'obectif ...",
    },
    {
      "title": "Let's Have Fun: Festival des Arts",
      "date": "09/04/2024",
      "message": "oin us for a breathtaking ...",
    },
    {
      "title": "Code of Duty ",
      "date": "09/04/2024",
      "message": "Join us for an unmissable event, ...",
    },
    {
      "title": "Préparation à la Certification DELF",
      "date": "09/04/2024",
      "message": "Nous sommes ravis de vous annoncer ...",
    },
    {
      "title": "News5",
      "date": "10/10/2014",
      "message": " here see one line of message",
    },
    {
      "title": "News6",
      "date": "10/10/2017",
      "message": " here see one line of message",
    },
    {
      "title": "News7",
      "date": "3/07/2013",
      "message": " here see one line of message",
    }
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student Sync',
          style: TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.w900,letterSpacing: 1,),

        ),
        leading: IconButton(onPressed: (){
         PersistentNavBarNavigator.pushNewScreen(context, screen: const HomePage());
        },icon: const Icon(Icons.arrow_back),),
        actions: [
          IconButton(
              onPressed: () {
                PersistentNavBarNavigator.pushNewScreen(context,
                    screen: const UserInfo(),withNavBar: false);
              },
              icon: const Icon(Icons.face),
              iconSize: 25),
        ],
        bottom: TabBar(
            controller: tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4.5,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                key: key1,
                child: Row(
                  children: [
                    const Text(
                      "Message",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.yellowAccent,
                      child: const Text("NEW",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    )
                  ],
                ),
              ),
              const Tab(
                  child: Text(
                "News",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              )),
              const Tab(
                  child: Text(
                "Schedule",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              )),
              const Tab(
                  child: Text(
                "Documents",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              )),
            ]),
      ),
      body: Container(
        color: Colors.grey[200],
        child: TabBarView(
          controller: tabController,
          // controller: tapController,
          children: [
            GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // crossAxisSpacing: 10,
               // mainAxisSpacing: 0,
                mainAxisExtent: 175
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: afficheMessage.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    margin: const EdgeInsets.all(20),
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 20,
                    child: Container(

                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                         //   mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "Title: " + afficheMessage[index]["title"], style: const TextStyle(fontWeight: FontWeight.w500),)),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Date & Time: " +afficheMessage[index]["date"], style: const TextStyle(fontWeight: FontWeight.w500),)),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Message: " +afficheMessage[index]["message"], style: const TextStyle(fontWeight: FontWeight.w500),)),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          const Divider(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    PersistentNavBarNavigator.pushNewScreen(context, screen: const Message(),withNavBar: false);


                                  },
                                  child: const Text("Open Message",style: TextStyle(color: Colors.deepPurple),)),
                              const Column(
                                children: [Icon(Icons.visibility), Text("2")],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),

            GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 0,
                  mainAxisExtent: 175
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: afficheMessage.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    margin: const EdgeInsets.all(20),
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 20,
                    child: Container(

                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            //   mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Title: " + afficheNews[index]["title"], style: const TextStyle(fontWeight: FontWeight.w500),)),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Date & Time: " +afficheNews[index]["date"], style: const TextStyle(fontWeight: FontWeight.w500),)),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("News: " +afficheNews[index]["message"], style: const TextStyle(fontWeight: FontWeight.w500),)),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          const Divider(
                            height: 2,
                          ),
                          Align(alignment: Alignment.centerRight,child: TextButton(onPressed: (){
                            PersistentNavBarNavigator.pushNewScreen(context, screen: const News(),withNavBar: false);

                          }, child: const Text("Show more")))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),

            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(5),
                child: Column(
                  children: [


                    Container(
                        height: 50,
                        width:screenWidth ,
                        color: Colors.white,
                        child: Image.asset("images/schedule2.png",)),
                    const SizedBox(height: 10,),
                    Container(
                      color:Colors.white,
                      width: screenWidth,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Emploi du temps"),
                          Text("02/02/2024")
                        ],),
                    ),
                    SizedBox(height: 10,),
                    Column(children: [
                      InkWell(onTap: (){
                       showDialog(context: context, builder: (context) => AlertDialog(
                         title: const Text("Emploi du Temps"),
                         actions: [TextButton(onPressed: (){}, child: const Text("Aperçu en Plein écran",style: TextStyle(color: Colors.blue),)),
                           TextButton(onPressed: (){

                           }, child: const Text("Annuler",style: TextStyle(color: Colors.blue))),
                         ],
                         icon: const Icon(Icons.screen_lock_rotation),

                       ),


                        );
                      },
                      child: SizedBox(
                        height: 200,
                        width: screenWidth,
                        child: Image.asset("images/emploi.png",fit: BoxFit.fill,),

                      ),),
                      Container(
                          color:Colors.white,
                          width: screenWidth,
                          alignment: Alignment.center,
                          height: 50,
                          child: const Text("cliquez sur l'image ci_dissus pour l'agrandir/télécharger"))
                    ],)
                  ],
                ),
              ),
            ),
            const Text("bbb"),


            // ])
          ],
        ),
      ),

    );
  }
}

