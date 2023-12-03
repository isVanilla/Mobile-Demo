// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       extendBodyBehindAppBar: true,
//       body:
//       Stack(
//         children: [
//           Image.asset('images/home.png',
//           fit: BoxFit.cover,
//           width: double.infinity,
//           height: double.infinity,),
//
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:projectdemo/buttons.dart';
import 'package:projectdemo/cards.dart';
import 'package:projectdemo/list.dart';
import 'package:projectdemo/page1.dart';
import 'package:projectdemo/pagealert2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pagealert.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2();
}
class _Page2 extends State<Page2> {

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
              builder: (cpntext) => Page1()
          )
          );
        },
        backgroundColor: const Color(0xFF720026),
        child: Icon(Icons.monetization_on,
          size: 32,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFEEE2DE),
        child:
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (cpntext) => Alert()
                  )
                  );
                },
                icon: Icon(Icons.home,
                  size: 32,
                  color: const Color(0xFF720026),),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (cpntext) => Settings(),
                      )
                  );
                },
                icon: Icon(Icons.settings,
                  size: 32,
                  color: const Color(0xFF720026),),
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
                          'S A V I N G ',
                          style: TextStyle(
                            fontSize: 28,
                            color: const Color(0xFF720026),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' P L A N',
                          style: TextStyle(
                            fontSize: 28,
                            color: const Color(0xFF720026),
                          ),
                        ),
                      ],
                    ),

                    //Button Plus
                    // Container(
                    //   padding: const EdgeInsets.all(8.0),
                    //   decoration: const BoxDecoration(
                    //     color: const Color(0xFF720026),
                    //     shape: BoxShape.circle,
                    //   ),
                    //   child: const Icon(
                    //     Icons.add,
                    //     color: Colors.white,
                    //   ),
                    // ),
                  ],
                ),
              ),

              // cards
              SizedBox(
                height: 200,

              ),

              //cards start
              Container(
                width: 250,
                height: 250,
                padding: EdgeInsets.all(20), //flutter docs
                decoration: BoxDecoration(
                  color: const Color(0xFF720026),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        Row(
                          children: [
                            Text('this section is yet to come',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 40.0),
                          child: Row(
                            children: [
                              Text(
                                  'COMING SOON',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                  ),
                            ],
                          ),
                        ),
                    Row(
                      children: [
                        Text('press  \$  to go back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //cards end
              const SizedBox(height: 20,),

              SmoothPageIndicator(
                controller: _controller,
                count: 1,
                effect: const ExpandingDotsEffect(
                  activeDotColor: const Color(0xFF720026),
                ),
              ),
              const SizedBox(height: 20,),

              SizedBox( height: 25),

              //stats and transactions
            ],
          ),
        ),
      ),
    );
  }
}

