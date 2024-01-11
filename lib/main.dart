import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/wallet.dart';

void main() {
  var neul = Player(name: 'neul');
  runApp(const App());
}

class Player {
  String? name;

  Player({required this.name});
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 22),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 382',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Button(
                          text: 'Transfer',
                          bgColor: Colors.amber,
                          textColor: Colors.black),
                      //const SizedBox(
                      //  width: 20,
                      //),
                      Button(
                        text: 'Request',
                        bgColor: Colors.white.withOpacity(0.02),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          )),
                      Text('View All',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 16,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wallet(
                    text1: 'Euro',
                    text2: '6 428',
                    text3: 'EUR',
                    color1: Colors.white.withOpacity(0.02),
                    color2: Colors.white,
                    icon: Icons.euro_rounded,
                    y: 0,
                  ),
                  const Wallet(
                    text1: 'Dollar',
                    text2: '55 622',
                    text3: 'USD',
                    color1: Colors.white,
                    color2: Colors.black,
                    icon: Icons.currency_exchange_rounded,
                    y: -10,
                  ),
                  const Wallet(
                    text1: 'Rupee',
                    text2: '28 981',
                    text3: 'INR',
                    color1: Color.fromARGB(255, 11, 10, 10),
                    color2: Colors.white,
                    icon: Icons.currency_rupee,
                    y: -20,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
