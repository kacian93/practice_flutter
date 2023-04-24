import 'package:first_project/button.dart';
import 'package:first_project/currency_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              Text(
                '\$ 5 294 482',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    text: 'require',
                    bgcolor: Color(0xFFF1B33B),
                    textColor: Colors.black,
                  ),
                  MyButton(
                    text: 'transfer',
                    bgcolor: Color(0xFF1F2322),
                    textColor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 22),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CurrencyCard(name: 'Euro', code: 'EUR', amount: '6 428', icon: Icons.euro_rounded, isInverted: false, order:1,),
              CurrencyCard(name: 'Bitcoin', code: 'BTC', amount: '3 249', icon: Icons.currency_bitcoin, isInverted: true,order:2,),
              CurrencyCard(name: 'Dolor', code: 'USD', amount: '428', icon: Icons.money, isInverted: false, order : 3,),

            ],
          ),
        ),
      ),
    ));
  }
}
