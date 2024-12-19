import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../base/res/styles/app_colors.dart';
import '../base/res/media.dart';
import 'home/widgets/offer_card_view.dart';
import 'home/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  bool _showTitle = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        _showTitle =
            _scrollController.offset > 100; // Adjust the offset as needed
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            if (kDebugMode) {
              print('Back button clicked');
            }
          },
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: _showTitle
            ? const Text(
                "Magnolia Bakery",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            : null,
        elevation: 1,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _scrollController, // Attach ScrollController here
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // Header section
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
                        const SizedBox(width: 8.0),
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
                              maxLines: 1,
                            ),
                            Row(
                              children: [
                                const Text(
                                  '3% cashback',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontFamily: 'Popins',
                                  ),
                                ),
                                const SizedBox(width: 5.0),
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 5.0),
                                const Text(
                                  '₹250 Welcome Bonus',
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
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              // Tabs
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
                          Tab(text: "Store Visit"),
                          Tab(text: "Online"),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              // Offer cards
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  OfferCardView(
                    gradientListOfColors: AppColors.primaryGradient1,
                    imagePath: AppMedia.storeCashback_2,
                    buttonText: 'Claim',
                    onPressed: () {
                      print('Click here');
                    },
                    title: 'Claim your gift',
                    subTitle: 'of 🪙 250',
                  ),
                  OfferCardView(
                    gradientListOfColors: AppColors.primaryGradient2,
                    imagePath: AppMedia.giftBox,
                    buttonText: 'Get for 450',
                    onPressed: () {},
                    title: 'Buy 🪙 500',
                    subTitle: 'for just 450',
                  ),
                  OfferCardView(
                    gradientListOfColors: AppColors.primaryGradient3,
                    imagePath: AppMedia.cashbackOffer,
                    buttonText: 'Applied',
                    onPressed: () {},
                    isEnabled: false,
                    title: 'Shop above 899',
                    subTitle: '& get 🪙 50',
                  ),
                  OfferCardView(
                    gradientListOfColors: AppColors.primaryGradient1,
                    imagePath: AppMedia.storeCashback_1,
                    buttonText: 'Applied',
                    isEnabled: false,
                    title: 'Purchase in Store',
                    subTitle: '& get 5% back',
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Product cards
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                padding: const EdgeInsets.only(bottom: 16.0),
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
        height: 210,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.1),
              blurRadius: 10.0,
              offset: const Offset(0, -4),
              spreadRadius: 0,
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
                  fontFamily: 'Popins',
                  fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              "Scan Receipt/share payment screenshot to earn",
              style: TextStyle(
                  color: const Color(0xFF000000).withOpacity(0.4),
                  fontSize: 12,
                  fontFamily: 'Popins',
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                if (kDebugMode) {
                  print('upi click');
                }
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                      color: const Color(0xFF000000).withOpacity(0.2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Share Payment image",
                        style: TextStyle(
                            color: Color(0xFF5764DA),
                            fontSize: 14,
                            fontFamily: 'Popins',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image.asset(
                      AppMedia.upiImage,
                      width: 50,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF5764DA),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  if (kDebugMode) {
                    print('Scan Receipt Taped');
                  }
                },
                child: const Text(
                  "Scan Receipt",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontFamily: 'Popins',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
