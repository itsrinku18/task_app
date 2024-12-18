import 'package:flutter/material.dart';
import 'package:task_app/base/res/media.dart';

import '../base/res/styles/app_colors.dart';
import 'home/widgets/offer_card_view.dart';
import 'home/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              print('click here');
            },
            child: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppMedia.logo,
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ratandeep Supermarket",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Popins',
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  '3% cashback',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontFamily: 'Popins',
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  '250 Welcome Bonus',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontFamily: 'Popins',
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              // tabs
              Container(
                color: Colors.white,
                child: const DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            text: "Store Visit",
                          ),
                          Tab(
                            text: "Online",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: const [
                  OfferCardView(
                    gradientListOfColors: AppColors.primaryGradient1,
                    imagePath: AppMedia.storeCashback_2,
                    buttonText: 'Claim',
                  ),
                  OfferCardView(
                    gradientListOfColors: AppColors.primaryGradient2,
                    imagePath: AppMedia.giftBox,
                    buttonText: 'Get for 450',
                  ),
                  OfferCardView(
                    gradientListOfColors: AppColors.primaryGradient3,
                    imagePath: AppMedia.cashbackOffer,
                    buttonText: 'Applied',
                  ),
                  OfferCardView(
                    gradientListOfColors: AppColors.primaryGradient1,
                    imagePath: AppMedia.storeCashback_1,
                    buttonText: 'Applied',
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              GridView.count(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
                childAspectRatio: 0.75,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ProductCard(
                    imagePath: AppMedia.productImg1,
                    productName: 'Drools Chicken & Egg \nAdult Dog Food.',
                    amount: '120',
                    crossAmount: '145',
                    percentageOff: '25',
                    coins: '110',
                  ),
                  ProductCard(
                    imagePath: AppMedia.productImg2,
                    productName: 'ADIDOG Combo of 3 \nSqueaky Active Balls',
                    amount: '60',
                    crossAmount: '70',
                    percentageOff: '10',
                    coins: '40',
                  ),
                  ProductCard(
                    imagePath: AppMedia.productImg3,
                    productName:
                        'Pedigree Dry Dog Food \nFor Puppy (pack of 2)',
                    amount: '120',
                    crossAmount: '145',
                    percentageOff: '25',
                    coins: '150',
                  ),
                  ProductCard(
                    imagePath: AppMedia.productImg4,
                    productName: 'Farmina Vetlife Renal \nDog Food 2Kg',
                    amount: '120',
                    crossAmount: '145',
                    percentageOff: '25',
                    coins: '280',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 180,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0, -1),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Proof of transaction",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              "Scan Receipt/share payment screenshot to earn",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Share Payment image",
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ),
                  Image.asset(
                    "assets/images/upi_img.png",
                    width: 50,
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text("Scan Receipt"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
