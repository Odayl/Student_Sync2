import 'package:flutter/material.dart';
import 'package:student_sync/data/branche.dart';

class AddSchedule extends StatefulWidget {
  const AddSchedule({super.key});

  @override
  State<AddSchedule> createState() => _AddScheduleState();
}

class _AddScheduleState extends State<AddSchedule> {
 BrancheData br = BrancheData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Schedule",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 30,
          color: Colors.red,
          child: InkWell(onTap: (){
            print(br.getBranche);
          },),
        ),
      ),
          );
  }
}
