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
                    shape: BoxShape.rectangle, border: Border.all(width: 1)),
                child: Text("Title of message")),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text("Date : 14 /12 /2024 , 20:21 Am "),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle, border: Border.all(width: 1)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
                child: Text("Descreption: **********************"),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 1))),
          ],
        ),
      ),
    );
  }
}
