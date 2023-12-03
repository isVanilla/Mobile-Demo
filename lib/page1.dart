import 'package:flutter/material.dart';
import 'package:projectdemo/buttons.dart';
import 'package:projectdemo/cards.dart';
import 'package:projectdemo/home.dart';
import 'package:projectdemo/list.dart';
import 'package:projectdemo/pagealert.dart';
import 'package:projectdemo/pagealert2.dart';
import 'package:projectdemo/pagealert4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1();
}
class _Page1 extends State<Page1> {

  //page controller

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEE2DE),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(
              builder: (cpntext) => Page2()
          )
          );
        },
        backgroundColor: const Color(0xFF780000),
        child: Icon(Icons.monetization_on,
        size: 32,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFEEE2DE),
        child:
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home,
                  size: 32,
                  color: const Color(0xFF780000),),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings,
                  size: 32,
                color: const Color(0xFF780000),),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/4.png"),
        fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28,
                            color: const Color(0xFF780000),
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 28,
                          color: const Color(0xFF780000),
                      ),
                      ),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: const Color(0xFF780000),
                        shape: BoxShape.circle,

                      ),
                      child:
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                            builder: (cpntext) => PageBeg(),
                          )
                          );
                        },
                        icon: Icon(Icons.add,
                          size: 30,
                          color: Colors.white),
                      ),
                      // const Icon(
                      //     Icons.add,
                      //     color: Colors.white,
                      //     ),
                  ),
                ],
              ),
            ),

            // cards
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                MyCard(balance: 7536.99,
                       cardNumber: 7890325498741222,
                       expiryMonth: 11,
                       expiryYear: 24,
                ),
                  MyCard(balance: 10236.00,
                    cardNumber: 4652877001223745,
                    expiryMonth: 6,
                    expiryYear: 27,
                  ),
                  MyCard(balance: 1650.08,
                    cardNumber: 1222455897643325,
                    expiryMonth: 10,
                    expiryYear: 25,
                  ),
              ],
              ),
            ),
            const SizedBox(height: 20,),

            SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: const Color(0xFF284B63),
                ),
            ),
            const SizedBox(height: 20,),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(imagepath: 'images/income.png', text: 'Income'),
                  MyButton(imagepath: 'images/bill.png', text: 'Expenses'),
                  MyButton(imagepath: 'images/piggy.png', text: 'Savings'),

                ],
              ),
            ),
            SizedBox( height: 30),

            //stats and transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,),
              child: Column(
                children: [
               //stats
                  MyList('images/payment.png',
                      'Saving Plan',
                      'Optimized Saving Strategy'),

              ],),
            )
          ],
        ),
      ),
      ),
    );
  }
}
