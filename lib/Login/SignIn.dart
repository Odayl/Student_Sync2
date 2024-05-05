import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
bool visible = true;
class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    TextEditingController ps = TextEditingController();


    return Scaffold(
        body: SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Stack(
        children: [
          ClipPath(
            clipper: DirectionalWaveClipper(
                verticalPosition: VerticalPosition.BOTTOM,
                horizontalPosition: HorizontalPosition.LEFT),
            child: Container(
              height: 120,
              color: Colors.blue[300],
            ),
          ),
          ClipPath(
            clipper: DirectionalWaveClipper(
                verticalPosition: VerticalPosition.BOTTOM,
                horizontalPosition: HorizontalPosition.RIGHT),
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 0,
            width: screenWidth,
            child: ClipPath(
              clipper: DirectionalWaveClipper(
                  verticalPosition: VerticalPosition.TOP,
                  horizontalPosition: HorizontalPosition.LEFT),
              child: Container(
                height: 120,
                color: Colors.blue[300],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            width: screenWidth,
            child: ClipPath(
              clipper: DirectionalWaveClipper(
                  verticalPosition: VerticalPosition.TOP,
                  horizontalPosition: HorizontalPosition.RIGHT),
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
          ),
          Center(
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(

                    height: 100,
                    child: Image.asset(

                      "images/book2.png",
                      fit: BoxFit.contain,
                    )),
                Container(
                  child: Text(
                    "STUDENT SYNC",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.blue[800]),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.blue,width: 10),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            contentPadding: const EdgeInsets.all(10),
                            labelText: 'Admin/Student',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.blue[800])),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        cursorColor: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(


                        obscureText: visible,
                        decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  visible = !visible;

                                });
                              },
                              child: Icon(visible? Icons.visibility:Icons.visibility_off),
                            ),
                            border: OutlineInputBorder(

                                borderSide:  const BorderSide(width: 1, ),
                                borderRadius: BorderRadius.circular(20),
                            ),

                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            contentPadding: const EdgeInsets.all(10),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                                color: Colors.blue[800])),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        cursorColor: Colors.black,
                      //  controller: ps,


                      ),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[800],
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                            textStyle: const TextStyle(fontSize: 20)



                            // animationDuration: Duration(seconds: 3)


                          ) ,
                          onPressed: (){
                            

                             Navigator.of(context).pushNamed("homeAdmin");
                          }, child: const Text("Sign In"))
                    ],
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    ));
  }
}
