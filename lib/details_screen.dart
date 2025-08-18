import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, String> dish;

  DetailsScreen({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Fullscreen Image on top
            Expanded(
              child: Image.asset(
                dish['image']!,
                width: double.infinity,   // fill width
                height: double.infinity,  // fill height
                fit: BoxFit.cover,        // stretch image proportionally
              ),
            ),

            // Top buttons row (back + cart)
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

            // details
            Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dish['name']!,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.green, size: 18),
                      SizedBox(width: 6),
                      Text(dish['time']!, style: TextStyle(color: Colors.black)),
                      SizedBox(width: 12),
                      Icon(Icons.star, color: Colors.red, size: 18),
                      SizedBox(width: 6),
                      Text(dish['rating']!, style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    dish['price']!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'A delicious and popular Indian dish, prepared with fresh ingredients and aromatic spices. Perfect for a satisfying meal.',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),

            Expanded(child: Container()),

            // bottom bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.red),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
