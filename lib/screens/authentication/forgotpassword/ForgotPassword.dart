import 'package:flutter/material.dart';
import 'package:mobistylez/screens/authentication/forgotpassword/ForgotPasswordEmail.dart';
import 'package:mobistylez/screens/authentication/forgotpassword/ForgotPasswordNumber.dart';

class MyForgotPassword extends StatefulWidget {
  const MyForgotPassword({Key? key}) : super(key: key);

  @override
  _MyForgotPasswordState createState() => _MyForgotPasswordState();
}

class _MyForgotPasswordState extends State<MyForgotPassword>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 120,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Column(
          children: [
            Image(
              height: 100,
              image: AssetImage('assets/Group 30.png'),
            ),
            // Text(
            //   'Mobi Movers',
            //   style: TextStyle(
            //     fontFamily: 'Qwigley',
            //     color: Colors.red,
            //   ),
            // ),
          ],
        ),
      ),
      body: Column(
        children: [
          TabBar(
            unselectedLabelColor: Colors.black,
            controller: tabController,
            labelColor: Colors.red,
            indicatorColor: Colors.redAccent,
            tabs: <Widget>[
              Tab(
                text: "Email",
              ),
              Tab(
                text: "Phone Number",
              )
            ],
          ),
          Expanded(
            child: TabBarView(
                controller: tabController,
                children: [MyForgotPasswordEmail(), MyForgotPasswordNumber()]),
          ),
        ],
      ),
    );
  }
}
