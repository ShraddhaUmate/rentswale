import 'package:flutter/material.dart';

import 'main.dart';


void main() {
  runApp(MyApp());
}

class Food_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
              onTap: () {
        Navigator.of(context).pop(); // Navigate back to home page
        },
            child:  Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child:Icon(Icons.arrow_back),
              ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Biryani',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '123 items',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        body: Stack(
          children: [
            // Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      FilterContainer(text: 'Filter', icon: Icons.filter),
                      FilterContainer(text: 'Sort by',icon: Icons.sort),
                      FilterContainer(text: 'Pure Veg'),
                      FilterContainer(text: '< 30 mins'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    '121 restaurants to explore',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                MyContainer(
                  imageName: 'lib/food.jpg',
                  dealText: 'FLAT DEAL',
                  discountText: '125 OFF',
                  conditionText: 'ABOVE 249',
                  titleText: 'Pind Punjab',
                  ratingText: '4.5 (10K+) • 40-45 mins',
                  cuisineText: 'North Indian,Punjabi,Chinese',
                  locationText: 'Baner • 6.4km',
                ),
                SizedBox(height: 16),
                MyContainer(
                  imageName: 'lib/food.jpg',
                  dealText: '',
                  discountText: '50% OFF',
                  conditionText: 'UPTO 100',
                  titleText: 'Delhi Kitchen',
                  ratingText: '4.3 (10K+) • 40-45 mins',
                  cuisineText: 'Tandoor,Birayani,Desserts',
                  locationText: 'Aundh • 6.3km',
                ),
                SizedBox(height: 16),
                MyContainer(
                  imageName: 'lib/food.jpg',
                  dealText: 'ITEMS',
                  discountText: 'AT 199',
                  conditionText: '',
                  titleText: 'Vegetarian Delight',
                  ratingText: '4.1 (1K+) • 55-60 mins',
                  cuisineText: 'Vegetarian, Vegan',
                  locationText: 'Pashan • 6.1km',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FilterContainer extends StatelessWidget {
  final String text;
  final IconData? icon; // Add this line for the icon

  const FilterContainer({Key? key, required this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.black),
        color: Colors.white54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          if (icon != null) // Display icon if it's provided
            Icon(icon, size: 14),
          SizedBox(width: 02), // Add spacing between the icon and text
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
class MyContainer extends StatelessWidget {
  final String imageName;
  final String dealText;
  final String discountText;
  final String conditionText;
  final String titleText;
  final String ratingText;
  final String cuisineText;
  final String locationText;

  MyContainer({
    required this.imageName,
    required this.dealText,
    required this.discountText,
    required this.conditionText,
    required this.titleText,
    required this.ratingText,
    required this.cuisineText,
    required this.locationText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side: Image with text overlay
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imageName,
                  fit: BoxFit.cover,
                  width: 110,
                  height: 140,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(Icons.favorite_outline_sharp, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dealText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        discountText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        conditionText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 16),
          // Right side: Description
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxHeight: 60), // Limit title height
                  child: Text(
                    titleText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 8), // Add some spacing
                Text(
                  ratingText,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  cuisineText,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  locationText,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
