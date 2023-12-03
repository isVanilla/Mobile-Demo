import 'package:flutter/material.dart';

class Buttoffs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body:
        Stack(
          children: [
            Image.asset('images/dis.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,),

            // Center(
            //   child:
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   // child: Container(
            //   //   width: 200,
            //   //   child: Text(
            //   //     'NOW WAY YOU GOT THAT WRONG TWICE',
            //   //     style: TextStyle(
            //   //       fontSize: 20,
            //   //       color: Colors.white,
            //   //       fontWeight: FontWeight.bold,
            //   //     ),
            //   //   ),
            //   // ),
            // ),)

          ],

        ),
      );
  }
}