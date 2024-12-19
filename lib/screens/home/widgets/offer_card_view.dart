import 'package:flutter/material.dart';
import 'package:task_app/base/widgets/app_layoutbuilder_widget.dart';

class OfferCardView extends StatelessWidget {
  final LinearGradient gradientListOfColors;
  final String imagePath;
  final String buttonText;
  final String title;
  final String subTitle;
  final bool isEnabled;
  final VoidCallback onPressed;

  const OfferCardView(
      {super.key,
      required this.gradientListOfColors,
      required this.imagePath,
      required this.buttonText,
      required this.onPressed,
      required this.title,
      required this.subTitle,
      this.isEnabled = true});

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
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Popins',
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              subTitle,
              style: const TextStyle(
                  fontFamily: 'Popins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 16,
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
                  backgroundColor: isEnabled ? Colors.white : Colors.white,
                  minimumSize: const Size(double.infinity, 40),
                ),
                onPressed: isEnabled ? onPressed : null,
                child: Text(
                  buttonText,
                  style: TextStyle(
                      fontFamily: 'Popins',
                      fontSize: 14,
                      fontWeight:
                          isEnabled ? FontWeight.normal : FontWeight.bold),
                ))
            // dotted line
          ],
        )
      ]),
    );
  }
}
