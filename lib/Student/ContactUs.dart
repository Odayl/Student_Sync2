import 'package:flutter/material.dart';


class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contacter-Nous ",
          style: TextStyle(
            color: Colors.blue, fontSize: 30, fontWeight: FontWeight.w900,letterSpacing: 1,),
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          color: Colors.grey[300],
          margin: const EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 120,
                width: screenWidth,
                child: Image.asset("images/info_image.png", fit: BoxFit.fill),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Téléphone",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("93225655"),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white),
                            child: const Text("APPELER"),
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("73644914"),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white),
                            child: const Text("APPELER"),
                          )
                        ]),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                child: Column(children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("contact@esetsousse.com.tn"),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white),
                          child: const Text("ENVOYER"),
                        )
                      ]),
                ]),
              ),
        
          const SizedBox(
          height: 10),
        
            Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        child: const Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.access_time_outlined,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Horaires administratifs",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Align(alignment: Alignment.bottomLeft,child: Text("Lundi - vendredi: 08:00 - 18:00")),
          SizedBox(height: 2,),
          Align(alignment: Alignment.bottomLeft,child: Text("Samedi: 08:00 - 13:00"))
          
        
        ]),
            ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),


            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.flag,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Adresse",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green,),

                    ),
                  ],
                ),
                const Align(alignment: Alignment.bottomLeft,child: Text("Cité Erriadh - B.P. 135 - 4023")),

                SizedBox(
                  height: 190,
                  width: screenWidth,
                  //margin: EdgeInsets.all(5),
                  child: Image.asset("images/map.png",fit: BoxFit.fill,),),
              ],
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}
