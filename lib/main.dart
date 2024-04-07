import 'package:flutter/material.dart';
import 'package:student_sync/Student/Disconnect.dart';
import 'package:student_sync/Student/HomePage.dart';
import 'package:student_sync/Student/NextHomePage.dart';
import 'package:student_sync/Student/UserInfo.dart';
import 'package:student_sync/Student/mainScreen.dart';
import 'package:student_sync/admin/add_message/AddMessage.dart';
import 'package:student_sync/admin/add_news/AddNews.dart';
import 'Login/SignIn.dart';
import 'admin/homePage/AdminHomePage.dart';


void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const AdminHomePage(),
      routes: {
        "home":(context)=> const HomePage(),
        "sign in":(context)=> const SignIn(),
        "studentSync":(context)=> const NextPageHome(),
        "mainScreen": (context)=> const MainScreen(),
        "disconnect":(context)=> const Disconnect(),
        "userInfo":(context)=> const UserInfo(),
        "addMessage":(context)=> const AddMessage(),
        "addNews":(context)=> const AddNews(),

      },
    );
  }
}
