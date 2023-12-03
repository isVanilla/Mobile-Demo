import 'package:flutter/material.dart';
import 'package:projectdemo/pagealert3.dart';

class MyButton extends StatelessWidget {

  final String imagepath;
  final String text;

  const MyButton({super.key, required this.imagepath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.white24,
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(imagepath.toString()),
          ),
        ),
        OutlinedButton(
          onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(
              builder: (cpntext) => Buttoffs(),
          )
          );
        }, child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(text.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF284B63),
            ),),
        ),
        )
      ],
    );
}
}
