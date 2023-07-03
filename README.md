# flutter_credit_card_ui

![GitHub](https://img.shields.io/github/license/ingeniousmindslab/flutter_credit_card_ui)

`flutter_credit_card_ui` is a Flutter package that allows you to easily create debit card and credit card user interfaces. With this package, users can also flip the card to view additional details. It provides customizable options for card decoration, such as gradient colors, background images, and various text styles.

## Installation

Add the following dependency to your `pubspec.yaml` file:

```
dependencies:
  flutter_credit_card_ui: ^1.0.0

```

## Usage

Import the package into your Dart file:

```
import 'package:flutter_credit_card_ui/flutter_credit_card_ui.dart';

```

Use the `CreditCardWidget` widget to create a card interface:

```
CreditCardWidget(
  cardDecoration: CardDecoration(
    showBirdImage: true,
  ),
  cvvText: "478",
  gradient: const LinearGradient(
    colors: [
      Color(0xFF3366FF),
      Color(0xFF00CCFF),
    ],
    begin: FractionalOffset(0.0, 0.0),
    end: FractionalOffset(1.0, 0.0),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  ),
  cardHolder: "Mr. Marcia Fadel",
  cardNumber: "4660 9282 5392 9728",
  cardExpiration: "7/2026",
  cardtype: CardType.rupay,
  color: Colors.red,
),

```

## Showcase

![1688365129907](image/README/1688365129907.png | width=150)

## About Us

`flutter_credit_card_ui` is developed and maintained by Ingenious Minds Lab, a software development company specializing in mobile and web applications.

Learn more about us and our projects on our website: [www.ingeniousmindslab.com](https://www.ingeniousmindslab.com/)

## Contributions

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please create an issue on the [GitHub repository](https://github.com/ingeniousmindslab/flutter_credit_card_ui).

## License

This package is released under the [MIT License](https://chat.openai.com/LICENSE).
