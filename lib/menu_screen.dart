import 'package:flutter/material.dart';
import 'details_screen.dart'; // make sure you have this file

class menu_screen extends StatelessWidget {
  final List<Map<String, String>> dishes = [
    {
      'name': 'Paneer Butter Masala',
      'image': 'assets/images/paneer1.png',
      'time': '20 min',
      'rating': '4.8',
      'price': '₹250'
    },
    {
      'name': 'pizza',
      'image': 'assets/images/pizza.jpg',
      'time': '30 min',
      'rating': '5.0',
      'price': '₹370'
    },
    {
      'name': 'Masala Dosa',
      'image': 'assets/images/dosa1.png',
      'time': '10 min',
      'rating': '4.7',
      'price': '₹120'
    },
    {
      'name': 'Gulab Jamun',
      'image': 'assets/images/gulab1.png',
      'time': '10 min',
      'rating': '4.9',
      'price': '₹150'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Menu",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(16)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'search',

                  ),
                ),
              ),
            ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
             // color: Color(0xffB9D7D5),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                children: dishes.map((dish) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsScreen(dish: dish),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            dish['image']!,
                            height: 120,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              dish['name']!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Icon(Icons.timer, size: 16, color: Colors.green),
                                SizedBox(width: 6),
                                Text(dish['time']!, style: TextStyle(fontSize: 12)),
                                SizedBox(width: 10),
                                Icon(Icons.star, size: 16, color: Colors.red),
                                SizedBox(width: 6),
                                Text(dish['rating']!, style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              dish['price']!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: Icon(Icons.menu, color: Colors.teal), onPressed: () {}),
                IconButton(icon: Icon(Icons.favorite_border, color: Colors.grey), onPressed: () {}),
                IconButton(icon: Icon(Icons.calendar_today, color: Colors.grey), onPressed: () {}),
                IconButton(icon: Icon(Icons.person_outline, color: Colors.grey), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
