import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Order List',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Container(),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
