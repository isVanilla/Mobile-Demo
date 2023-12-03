import 'package:flutter/material.dart';

class Settings extends StatelessWidget {

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
            Image.asset('images/ket.gif',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,),

            Center(child:
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 200,
                child: Text(
                  'YOU GOT RICKROLLED',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),)

          ],

        ),
      );
  }
}