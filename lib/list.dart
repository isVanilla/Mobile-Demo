import 'package:flutter/material.dart';
import 'package:projectdemo/home.dart';

class MyList extends StatelessWidget {
  final String image;
  final String header;
  final String subtitle;

  MyList(
      this.image,
      this.header,
      this.subtitle
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(image.toString()),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(header.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF284B63),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(subtitle.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xFFEEEEEE),
                    ),),
                ],
              ),
            ],
          ),
          OutlinedButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(
                builder: (cpntext) => Page2()
            )
            );
            }, child: Icon(Icons.arrow_forward_ios,
              color: const Color(0xFF2B2A4C),
            size: 15,
          ),
          )
        ],
      ),
    );
  }
}
