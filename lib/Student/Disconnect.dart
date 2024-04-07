import 'package:custom_clippers/Clippers/directional_wave_clipper.dart';
import 'package:custom_clippers/enum/enums.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:quickalert/quickalert.dart';
import 'package:student_sync/Login/SignIn.dart';


class Disconnect extends StatefulWidget {
  const Disconnect({super.key});

  @override
  State<Disconnect> createState() => _DisconnectState();
}

class _DisconnectState extends State<Disconnect> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Merci d'avoir choisi nos Institut",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      QuickAlert.show(
                          context: context,
                          type: QuickAlertType.confirm,
                          text: 'Do you want to logout',
                          confirmBtnText: 'Yes',
                          cancelBtnText: 'No',
                          confirmBtnColor: Colors.green,
                          onConfirmBtnTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const SignIn(),
                              withNavBar: false,
                            );
                          });
                    },
                    child: const Text(
                      "LogOut",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      // body:Center(
      //   child: ElevatedButton(onPressed: (){
      //     QuickAlert.show(
      //       context: context,
      //       type: QuickAlertType.confirm,
      //       text: 'Do you want to logout',
      //       confirmBtnText: 'Yes',
      //       cancelBtnText: 'No',
      //       confirmBtnColor: Colors.green,
      //       onConfirmBtnTap: (){
      //        PersistentNavBarNavigator.pushNewScreen(context, screen: SignIn(),withNavBar: false,);
      //       }
      //     );
      //   },
      //   child: Text("LogOut",style: TextStyle(color: Colors.blue),),
      //  ),
      //
      // )
    );
  }
}
