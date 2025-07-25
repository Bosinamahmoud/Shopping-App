import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              product.image,
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.width * 0.35,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            product.name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xffab96d1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: SizedBox()),
                InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(milliseconds: 500),
                        backgroundColor: Colors.white,
                        content: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Item added to the cart",
                                style: TextStyle(
                                    color: Colors.green),
                              ),
                            ),
                            IconButton(onPressed: () {

                            }, icon: Icon(Icons.close))
                          ],
                        ),
                      ),);
                  },
                    child: Icon(Icons.shopping_cart,color: Color(0xffab96d1),))
              ],
            ),
          ),
          const SizedBox(height: 6),

          /*ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffab96d1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            ),
            onPressed: () {
              // Add to cart logic
            },
            child: const Text("Add to cart"),
          ),*/
        ],
      ),
    );
  }
}
