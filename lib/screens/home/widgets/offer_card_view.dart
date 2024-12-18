import 'package:flutter/material.dart';
import 'package:task_app/base/widgets/app_layoutbuilder_widget.dart';

class OfferCardView extends StatelessWidget {
  final LinearGradient gradientListOfColors;
  final String imagePath;
  final String buttonText;

  const OfferCardView(
      {super.key,
      required this.gradientListOfColors,
      required this.imagePath,
      required this.buttonText,
      e});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
          gradient: gradientListOfColors,
          borderRadius: BorderRadius.circular(16.0)),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Claim your gift ',
              style: TextStyle(
                fontFamily: 'Popins',
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            RichText(
                text: TextSpan(children: [
              const TextSpan(
                text: 'of ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Popins',
                ),
              ),
              WidgetSpan(
                  child: Image.asset(
                'assets/images/coin.png',
                width: 20,
                height: 20,
              )),
              const TextSpan(
                text: ' 250',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Popins',
                ),
              ),
            ])),
            const SizedBox(
              height: 8,
            ),
            const AppLayoutBuilderWidget(
              randomDivider: 15,
              width: 6,
              isColor: Colors.grey,
            ),
            // line here
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 40),
                ),
                onPressed: () {},
                child: Text(
                  buttonText,
                  style: const TextStyle(
                      fontFamily: 'Popins', fontSize: 14, color: Colors.black),
                ))
            // dotted line
          ],
        )
      ]),
    );
  }
}
