import 'package:flutter_credit_card_ui/src/utils/utills.dart';

String cardname(CardType type) {
  switch (type) {
    case CardType.visa:
      return "Visa";
    case CardType.americanExpress:
      return "American Express";
    case CardType.discover:
      return "Discover";
    case CardType.masterCard:
      return "Mastercard";
    case CardType.rupay:
      return "RuPay";

    default:
      return "UnKnown";
  }
}

String getCardLogo(CardType type) {
  switch (type) {
    case CardType.visa:
      return "assets/logos/visa.png";
    case CardType.americanExpress:
      return "assets/logos/amex.png";
    case CardType.discover:
      return "assets/logos/discover.png";
    case CardType.masterCard:
      return "assets/logos/mastercard.png";
    case CardType.rupay:
      return "assets/logos/rupay.png";

    default:
      return "UnKnown";
  }
}
