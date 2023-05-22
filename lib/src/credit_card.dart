import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card_ui/src/models/credit_card_model.dart';
import 'package:flutter_credit_card_ui/src/utils/methods.dart';
import 'package:flutter_credit_card_ui/src/utils/utills.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    super.key,
    required this.color,
    required this.cardNumber,
    required this.cardHolder,
    required this.cardExpiration,
    required this.cardtype,
    this.cardDecoration,
    this.cvvText,
    this.declarationText,
    this.authoRizedText,
    this.stdText,
    this.gradient,
    this.bgImage,
  });
  final DecorationImage? bgImage;
  final Color color;
  final String cardNumber;
  final String? cvvText;
  final String? stdText;
  final String cardHolder;
  final String? declarationText;
  final String? authoRizedText;
  final Gradient? gradient;
  final String cardExpiration;
  final CardType cardtype;
  final CardDecoration? cardDecoration;
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Center(
        child: SizedBox(
          width: Utils.kCardWidth,
          height: Utils.kCardWidth * Utils.ratio,
          child: Container(
            decoration: BoxDecoration(
                image: bgImage,
                gradient: gradient,
                color: color,
                borderRadius: BorderRadius.circular(14)),
            child: Center(
              child: Container(
                height: Utils.kCardHeight,
                width: Utils.kCardWidth,
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cardname(cardtype),
                          style: cardDecoration?.companyNameStyle ??
                              const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                package: "flutter_credit_card_ui",
                                letterSpacing: 1,
                              ),
                        ),
                        Image.asset(
                          getCardLogo(cardtype),
                          height: 60,
                          width: 60,
                          package: "flutter_credit_card_ui",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/chip.png",
                          height: 50,
                          width: 60,
                          package: "flutter_credit_card_ui",
                        ),
                        const SizedBox(width: 8),
                        Visibility(
                          visible: cardDecoration?.showContactLessIcon ?? true,
                          child: Image.asset(
                            "assets/images/contact_less.png",
                            height: 30,
                            width: 30,
                            package: "flutter_credit_card_ui",
                          ),
                        ),
                      ],
                    ),
                    Text(
                      cardNumber,
                      style: cardDecoration?.cardNumberTextStyle ??
                          const TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            letterSpacing: 4,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buildCardHolderDetailsBlock(
                          textStyle: cardDecoration?.cardHolderLabelStyle,
                          detailstextStyle: cardDecoration?.cardNumberTextStyle,
                          label: 'CARDHOLDER',
                          value: cardHolder,
                        ),
                        buildvalidDetailsBlock(
                            detailstextStyle:
                                cardDecoration?.validTillDetailsStyle,
                            labeltextStyle: cardDecoration?.validTillLabelStyle,
                            label: 'VALID THRU',
                            value: cardExpiration),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      back: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Center(
          child: Container(
            width: Utils.kCardWidth,
            height: Utils.kCardWidth * Utils.ratio,
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                image: bgImage,
                gradient: gradient,
                color: color,
                borderRadius: BorderRadius.circular(18)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Container(
                  height: 40,
                  width: Utils.kCardWidth,
                  color: Colors.black,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(
                        width: cardDecoration?.showBirdImage == false ? 50 : 5),
                    Visibility(
                      visible: cardDecoration?.showBirdImage ?? true,
                      child: Image.asset(
                        "assets/images/bird.png",
                        height: 50,
                        width: 50,
                        package: "flutter_credit_card_ui",
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          stdText ?? "Prifix Local STD call",
                          style: cardDecoration?.stdTextStyle ??
                              const TextStyle(color: Colors.white, fontSize: 8),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: Utils.kCardWidth * .5,
                              color: Colors.grey[600],
                            ),
                            Container(
                              height: 25,
                              width: Utils.kCardWidth * .1,
                              color: Colors.white,
                              child: Center(
                                  child: Text(
                                cvvText ?? "000",
                                style: cardDecoration?.cvvTextStyle ??
                                    const TextStyle(color: Colors.black),
                              )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        SizedBox(
                          width: 300,
                          child: Text(
                            authoRizedText ?? "AUTHORISED SIGNATURE",
                            maxLines: 2,
                            style: cardDecoration?.authoRizedTextStyle ??
                                const TextStyle(
                                    color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 12, right: 10),
                  child: Text(
                    maxLines: 6,
                    declarationText ??
                        "Never share your credit card Number, Expiry Date, CVV, PIN & OTP With anyone.To Generate manage pin, download Card Mobile APp ir visit \n\nNever share your credit card PINs, interest banking passwords, or mobile banking passwords with anyone, be it a friend or a family member, While not illegal to do so, it is certainly foolish to share your credit or debit card information via email or text",
                    style: cardDecoration?.declarationTextStyle ??
                        const TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Column buildCardHolderDetailsBlock(
    {required String label,
    required String value,
    TextStyle? textStyle,
    TextStyle? detailstextStyle}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: textStyle ??
            const TextStyle(
                color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
      ),
      Text(
        value,
        style: detailstextStyle ??
            const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: .5,
            ),
      )
    ],
  );
}

Column buildvalidDetailsBlock(
    {required String label,
    required String value,
    TextStyle? labeltextStyle,
    TextStyle? detailstextStyle}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: labeltextStyle ??
            const TextStyle(
                color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
      ),
      Text(
        value,
        style: detailstextStyle ??
            const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: .5,
            ),
      )
    ],
  );
}
