import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 226, 78, 67),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 9,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  color: Color.fromARGB(255, 226, 78, 67),
                ),
                child: Column(
                  children: const[
                     ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Image(
                          image: AssetImage('assets/1.png'),
                        ),
                      ),
                      title: Text('#1234'),
                      subtitle: Text(
                        'Package Delivery',
                        style: TextStyle(
                            fontFamily: "Poppins", fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.pin_drop,
                        color: Colors.red,
                        size: 35,
                      ),
                      title: Text(
                        'Picked at 4:30 PM',
                        style: TextStyle(fontFamily: "Poppins"),
                      ),
                      subtitle: Text(
                        'SirSyed Town Street 1',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.pin_drop,
                        color: Colors.red,
                        size: 35,
                      ),
                      title: Text(
                        'Delivered at 5:30 PM',
                        style: TextStyle(fontFamily: "Poppins"),
                      ),
                      subtitle: Text(
                        'D Ground Street 1',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    const Divider(
                      thickness: 0.2,
                      color: Colors.black,
                      height: 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Delivery Charges',
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '\$3.30',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Express Charges',
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '\$3.50',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Tax And Service Charges',
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '\$3.50',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 0.2,
                      color: Colors.black,
                      height: 0.5,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Package Total',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '\$15.00',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      thickness: 0.2,
                      color: Colors.black,
                      height: 0.5,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Package Details',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: const [
                            Text(
                              'Package Number',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '#1234',
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: const [
                            Text(
                              'Package Items',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Cosmatics',
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: const [
                            Text(
                              'Delivery Payment',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Online',
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: const [
                            Text(
                              'Delivery Type',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Express Delivery',
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: const [
                            Text(
                              'Date',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '14/07/2021',
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.30,
                height: MediaQuery.of(context).size.height / 14,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Start',
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
