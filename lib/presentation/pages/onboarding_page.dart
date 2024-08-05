import 'package:flutter/material.dart';
import 'package:flutter_firebase_bloc/presentation/pages/atv_list_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              // flex: 2,
              child: Container(
            decoration: const BoxDecoration(
                // border: Border.all(width: 1, color: Colors.red),
                image: DecorationImage(
              image: AssetImage('assets/monster.png'),
            )),
          )),
          Expanded(
            child: Container(
              // decoration: BoxDecoration(
              //     border: Border.all(width: 2, color: Colors.white)),
              width: double.infinity,
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Premium ATV\'s. \nEnjoy the luxury',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '• Premium & Prestige ATV Rentals',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 4), // Add space between the bullet points
                  const Text('• Experience the Thrill at Affordable Prices',
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 4),
                  const Text('• High-End ATVs for Rent',
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 4),
                  const Text('• Thrill Rides at Budget-Friendly Rates',
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 4),
                  const Text('• Elite ATV Rentals',
                      style: TextStyle(color: Colors.grey)),
                  
                  Center(
                    child: SizedBox(
                      width: 320,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => AtvListScreen())
                              , (route) => false);
                          },
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white),
                          child: const Text(
                            'Let\'s Go',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
