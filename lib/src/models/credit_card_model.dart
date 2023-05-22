import 'package:flutter/material.dart';

class CreditCardData {}

class CardDecoration {
  final bool? showBirdImage;
  final bool? showContactLessIcon;
  final TextStyle? companyNameStyle;
  final TextStyle? cvvTextStyle;
  final TextStyle? cardHolderLabelStyle;
  final TextStyle? validTillLabelStyle;
  final TextStyle? authoRizedTextStyle;
  final TextStyle? cardHolderDetailsStyle;
  final TextStyle? validTillDetailsStyle;
  final TextStyle? cardNumberTextStyle;
  final TextStyle? stdTextStyle;
  final TextStyle? declarationTextStyle;

  CardDecoration({
    this.authoRizedTextStyle,
    this.declarationTextStyle,
    this.cvvTextStyle,
    this.showBirdImage,
    this.stdTextStyle,
    this.cardNumberTextStyle,
    this.cardHolderDetailsStyle,
    this.validTillDetailsStyle,
    this.showContactLessIcon,
    this.cardHolderLabelStyle,
    this.validTillLabelStyle,
    this.companyNameStyle,
  });
}
