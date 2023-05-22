import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/flutter_credit_card_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreditCardUIWidget(),
    );
  }
}

class CreditCardUIWidget extends StatelessWidget {
  const CreditCardUIWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CreditCardWidget(
            cardDecoration: CardDecoration(showBirdImage: true),
            cvvText: "478",
            gradient: const LinearGradient(
                colors: [
                  Color(0xFF3366FF),
                  Color(0xFF00CCFF),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
            cardHolder: "Mr. Marcia Fadel",
            cardNumber: "4660 9282 5392 9728",
            cardExpiration: "7/2026",
            cardtype: CardType.rupay,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
