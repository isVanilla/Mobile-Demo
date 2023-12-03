import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
            width: 250,
            padding: EdgeInsets.all(20), //flutter docs
            decoration: BoxDecoration(
              color: const Color(0xFF023047),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Image.asset('images/visa.png',
                    height: 50,)
                  ],
                ),
                Text(
                  '\$ ' + balance.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //flutter docs
                  children: [
                    Text(
                      style: TextStyle(
                             color: Colors.white,
                        fontSize: 15,
                      ),
                        cardNumber.toString()),
                    Text(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      expiryMonth.toString() + '/' + expiryYear.toString(),),
                  ],
                ),
              ],
            ),
      ),
    );
  }
}
