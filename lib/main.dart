import 'package:flutter/material.dart';
import 'package:untitled6/food_page.dart';
import 'package:untitled6/third_page.dart';

import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  List<String> imageNames = [
    'Real Estate',
    'Electronics',
    'Costume',
    'Kitchen',
    'Hotel',
    'Plumber',
    'Furniture',
    'Car',
    'Calendar',
    'View All',
  ];

  List<String> imagePaths = [
    'lib/icons/allicons/real-estate.png',
    'lib/icons/allicons/electronics.png',
    'lib/icons/allicons/costume.png',
    'lib/icons/allicons/kitchen.png',
    'lib/icons/allicons/hotel.png',
    'lib/icons/allicons/plumber.png',
    'lib/icons/allicons/furniture.png',
    'lib/icons/allicons/car.png',
    'lib/icons/allicons/calendar.png',
    'lib/icons/allicons/dots-menu.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/icons/allicons/bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 120,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white24,
                                ),
                                // Add your content for each item here
                                child: Center(
                                  //child: Text('Item $index'),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search Your Items',
                                  prefixIcon: Icon(Icons.search),
                                  border: InputBorder.none,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AppBar(
                  leading: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(size: 35, Icons.list_outlined)),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset(
                          'lib/icons/rentswalelogo.png',
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(width: 100),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        width: 100,
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.location_on),
                            hintText: 'PUNE',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ],
            ),
            Container(
              height: 220.0,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  crossAxisCount: 5,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigate to the third page when the kitchen image is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Food_Page()),
                          );
                        },
                        child: Container(
                          width: 75.0,
                          height: 42.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.red,
                              width: 2.0,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              imagePaths[index], // Assuming this is the kitchen image path
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 18.0),
                      Text(
                        imageNames[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 10,
              ),
            ),
            SizedBox(height: 2.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Trending Items',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      children: [
                        Icon(Icons.dataset, size: 15),
                        SizedBox(width: 4,),
                        Text(
                          'View All Items',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Container(
              height: 185,
              width: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  String imagePath = index == 0
                      ? 'lib/icons/allicons/laptop.jpg'
                      : 'lib/icons/allicons/frigde.jpeg.webp';

                  String description = index == 0
                      ? 'HP Laptop'
                      : 'LG Freeze';
                  String price = index == 0
                      ? '₹500/Day'
                      : '₹2k/Month';

                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigate to the second page when the image is clicked
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Second_Page()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              imagePath,
                              width: 120.0,
                              height: 110.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              colors: [
                                Colors.red.shade100,
                                Colors.lightBlue.shade100,
                              ],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                description,
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'Price: $price',
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: Icon(Icons.home, color: Colors.red),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: Icon(Icons.chat),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: Icon(Icons.add, size: 40, color: Colors.red),
            ),
            label: 'Rent',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: Icon(Icons.image),
            ),
            label: 'My Ads',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Third_Page()),
                  );
                },
                child: Icon(Icons.person),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
