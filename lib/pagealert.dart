import 'package:flutter/material.dart';

class Alert extends StatelessWidget {

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
          Image.asset('images/huh.gif',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,),

          Center(child:
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 200,
                child: Text(
                'FR? DOES THAT LOOK LIKE A \$ TO YOU? ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
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