import 'package:flutter/material.dart';
import '../model/product.dart';
import '../widgets/banner.dart';
import '../widgets/offer_card.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final PageController controller = PageController();
  final List<Map<String, String>> hotOffers = [
    {"image": "assets/images/4.jpg", "desc": "20% off on Tulips"},
    {"image": "assets/images/5.jpg", "desc": "Buy 1 Get 1 Free"},
    {"image": "assets/images/6.jpg", "desc": "Limited Time Sunflower Offer"},
    {"image": "assets/images/7.jpg", "desc": "Exclusive Lily Deal"},
    {"image": "assets/images/8.jpg", "desc": "Lavender Combo Pack"},
  ];

  final List<Product> products = [
    Product(
      image: "assets/images/4.jpg",
      name: "Blue white Bouquet",
      price: 200,
    ),
    Product(
      image: "assets/images/5.jpg",
      name: "Pink Tulip Delight",
      price: 250,
    ),
    Product(image: "assets/images/6.jpg", name: "Sunflower Charm", price: 100),
    Product(
      image: "assets/images/7.jpg",
      name: "White Lily Elegance",
      price: 300,
    ),
    Product(image: "assets/images/8.jpg", name: "Lavender Love ", price: 246),
    Product(
      image: "assets/images/1.jpg",
      name: "Mixed Bloom Surprise",
      price: 400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f6fc),
      appBar: AppBar(
        backgroundColor: const Color(0xffab96d1),
        elevation: 0,
        title: const Text(
          "Bloomify",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Banner Slider
            SizedBox(
              height: 180,
              child: PageView(
                controller: controller,
                children: [
                  BannerWidget(
                    text: "Up to 50% OFF",
                    imagePath: "assets/images/1.jpg",
                  ),
                  BannerWidget(
                    text: "New Arrivals",
                    imagePath: "assets/images/2.jpg",
                  ),
                  BannerWidget(
                    text: "Flash Sale",
                    imagePath: "assets/images/3.jpg",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Best Products",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5e478e),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Find what suits your needs",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Hot Offers",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5e478e),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: hotOffers.length,
              itemBuilder: (context, index) {
                final offer = hotOffers[index];
                return OfferCard(offer: offer);
              },
            ),
          ],
        ),
      ),
    );
  }
}
