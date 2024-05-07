import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Message",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
          ),
        ),
        // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(

                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    shape: BoxShape.rectangle, border: Border.all(width: 1)),
                child: Text(" Absence Msr Mohamed Aribi")),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(" 15 /04/ 2024 , 9:21 Am "),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration( color: Colors.blue[100],
                  shape: BoxShape.rectangle, border: Border.all(width: 1)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
                child: Text("Absence Msr Mohamed Aribi 1 jour le 15/04/2024,    se jour va rattraper à 20/04/2024 a 09:00 Am"),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    shape: BoxShape.rectangle, border: Border.all(width: 1))),
          ],
        ),
      ),
    );
  }
}
