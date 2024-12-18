import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String amount;
  final String crossAmount;
  final String percentageOff;
  final String coins;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.amount,
    required this.crossAmount,
    required this.percentageOff,
    required this.coins,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Image.asset(
            imagePath,
            width: 80,
            height: 80,
          )),
          const SizedBox(
            height: 16,
          ),
          Text(
            productName,
            style: const TextStyle(
              fontFamily: 'Popins',
              fontSize: 12,
              color: Colors.black,
            ),
            maxLines: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                '₹$amount',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Popins',
                ),
              ),
              const SizedBox(
                width: 2.0,
              ),
              Text(
                '₹$crossAmount',
                style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 2,
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                  fontFamily: 'Popins',
                ),
              ),
              const SizedBox(
                width: 2.0,
              ),
              Text(
                '₹$percentageOff OFF',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontFamily: 'Popins',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/coin.png',
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                  child: Text(
                coins,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Popins',
                ),
              )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(double.infinity, 20)),
                  onPressed: () {},
                  child: const Text(
                    'Claim',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontFamily: 'Popins',
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
