import 'package:flutter/material.dart';
import 'package:mobistylez/helper/constant.dart';
import 'package:mobistylez/screens/authentication/register.dart';
import 'package:mobistylez/screens/splash_screen.dart';

class ClientDelivery extends StatefulWidget {
  const ClientDelivery({Key? key}) : super(key: key);

  @override
  _ClientDeliveryState createState() => _ClientDeliveryState();
}

class _ClientDeliveryState extends State<ClientDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Image(
                image: AssetImage('assets/Group 30.png'),
                height: 150,
              ),
              const Text(
                'Who you are?',
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.10,
                          height: MediaQuery.of(context).size.height / 2,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Center(
                            child: Image(
                              image: AssetImage('assets/Group 175.png'),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Client',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          openScreen(context, const Regsiter());
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.10,
                          height: MediaQuery.of(context).size.height / 2,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Center(
                            child: Image(
                              image: AssetImage('assets/Group 241.png'),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Delivery Boy',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
