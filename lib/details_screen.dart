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
            // Image with buttons in a row
            Container(
              height: 260,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      dish['image']!,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          child: IconButton(
                            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
                            onPressed: () {},
                          ),
                        ),
                      ],
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
                  Text(dish['name']!, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.green, size: 18),
                      SizedBox(width: 6),
                      Text(dish['time']!),
                      SizedBox(width: 12),
                      Icon(Icons.star, color: Colors.red, size: 18),
                      SizedBox(width: 6),
                      Text(dish['rating']!),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(dish['price']!, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 12),
                  Text(
                    'A delicious and popular Indian dish, prepared with fresh ingredients and aromatic spices. Perfect for a satisfying meal.',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

            Spacer(),
            // bottom bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
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
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text('Add to Cart', style: TextStyle(fontSize: 16)),
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
