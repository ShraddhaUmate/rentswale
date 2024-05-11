import 'package:flutter/material.dart';
import 'package:untitled6/third_page.dart';

import 'main.dart';

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

class Second_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('lib/icons/allicons/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Stack(
                children: [
                  AppBar(
                    leading: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.list_outlined, size: 35),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 4.5,

                        ),
                        Container(
                          child: Image.asset(
                            'lib/icons/rentswalelogo.png',
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                        SizedBox(width: 100),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
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
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'lib/icons/allicons/laptop.jpg',
                    height: 250,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Laptop Intel Core HD',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            '₹275',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 4.0),
                            Text(
                              'Month',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              // Handle add item
                            },
                            child: Icon(Icons.remove, color: Colors.grey),
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Container(
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              // Handle subtract item
                            },
                            child: Container(
                                child: Icon(Icons.add, color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Descriptions',
                    textAlign: TextAlign.left,
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex eacommodo consequat.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.message, size: 25, color: Colors.red),
                    ),
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'ADD TO CART',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.wifi_calling_3_rounded,
                          size: 25, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomNavigationBar(
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
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Icon(Icons.home, color: Colors.red,)
                  ),
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
                    child: Icon(Icons.chat)),
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
                    ),child: Icon(Icons.image)),
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
        ],
      ),
    );
  }
}
