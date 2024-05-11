import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MyApp());
}

class Third_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage('lib/icons/allicons/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Main Content
            Container(
              padding: EdgeInsets.all(13.0),
              child: Center(
                child: Container(
                  height: 680,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white54,
                    border: Border.all(color: Colors.red, width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Containers for Profile Icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // First Container
                          Container(
                            height: 100,
                            width: 100,
                            margin: EdgeInsets.only(right: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                            ),
                            child: Icon(
                              Icons.person_outline,
                              size: 80,
                              color: Colors.white,
                            ),
                          ),
                          // Second Container with Arrow Forward Icon

                          // Third Container for Text
                          Expanded(
                            child: Container(
                              height: 100,
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Container for Nadeem Patel text
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.red,
                                        ),
                                        child: Icon(
                                          Icons.person_outline,
                                          size: 21,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'xyz 123',
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  // Container for Email Id
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.red,
                                        ),
                                        child: Icon(
                                          Icons.email,
                                          size: 21,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'xyz@gmail.com', // Replace with the actual email id
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  // Container for Web
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.red,
                                        ),
                                        child: Icon(
                                          Icons.language,
                                          size: 21,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'abcd.com', // Replace with the actual web address
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50,),
                      // Container for ListTiles
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildListTile(
                              icon: Icons.perm_identity,
                              label: 'KYC',
                            ),
                            buildListTile(
                              icon: Icons.tv,
                              label: 'My Packages',
                            ),
                            buildListTile(
                              icon: Icons.list_alt_sharp,
                              label: 'Order History',
                            ),
                            buildListTile(
                              icon: Icons.my_library_books_outlined,
                              label: 'My Order',
                            ),
                            buildListTile(
                              icon: Icons.wifi_calling_outlined,
                              label: 'Contact Us',
                            ),
                            buildListTile(
                              icon: Icons.people_outline,
                              label: 'About Us',
                            ),
                            buildListTile(
                              icon: Icons.help,
                              label: 'Help',
                            ),
                            // Add more ListTiles as needed
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // AppBar with Background
            AppBar(
              leading: Container(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'Shraddha',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 90, height: 10,),
                  Container(
                    width: 130,
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 30,
                        ),
                        hintText: 'Pune',
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
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
    );
  }

  Widget buildListTile({required IconData icon, required String label}) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.red,
          ),
          child: Icon(icon, size: 25, color: Colors.white70),
        ),
        trailing: Icon(Icons.label_important, size: 35, color: Colors.red),
        title: Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          // Handle ListTile tap
        },
      ),
    );
  }
}
