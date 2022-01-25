import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobistylez/helper/constant.dart';
import 'package:mobistylez/mainscreens/orderdetails.dart';

class MyOrderListScreen extends StatefulWidget {
  const MyOrderListScreen({Key? key}) : super(key: key);

  @override
  _MyOrderListScreenState createState() => _MyOrderListScreenState();
}

class _MyOrderListScreenState extends State<MyOrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('Images/profile.png'),
                  ),
                  Text(
                    "Ibtesam Ahmad",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    "ibtesamahmd75@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.userAlt,
                    size: 20,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.bell,
                    size: 20,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.box,
                    size: 20,
                    color: Colors.amberAccent,
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Orders",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.clock,
                    size: 20,
                    color: Colors.teal[500],
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Order History",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.star,
                    size: 20,
                    color: Colors.yellow[800],
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Earn Points",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.userLock,
                    size: 20,
                    color: Colors.brown[300],
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.signOutAlt,
                    size: 20,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Order List',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('Images/bike.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text("#1234"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 150),
                            child: Text("\$33.00"),
                          ),
                        ],
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(left: 90),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                    ),
                                    Text(
                                        "Picked at 4:30 PM \nDajkot Road Street 1"),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.red,
                                    ),
                                    Text(
                                        "Deliverd at 5:30 PM \nD ground hous 152"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("\$33.00"),
                        SizedBox(width: 140),
                        TextButton(
                          onPressed: () {
                            openScreen(context, OrderDetails());
                          },
                          child: Text("View Order"),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
