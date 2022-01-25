import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNewPasswordScreen extends StatefulWidget {
  const MyNewPasswordScreen({Key? key}) : super(key: key);

  @override
  _MyNewPasswordScreenState createState() => _MyNewPasswordScreenState();
}

class _MyNewPasswordScreenState extends State<MyNewPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  bool showPassword = true;

  bool showConfirmpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Text(
                  "Chnage Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                height: 48,
                width: 300,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: showPassword,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 14, top: 14),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        showPassword ? Icons.visibility_off : Icons.visibility,
                        size: 20,
                        color: showPassword ? Colors.black : Colors.purple,
                      ),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                height: 48,
                width: 300,
                child: TextFormField(
                  controller: _confirmpasswordController,
                  obscureText: showConfirmpassword,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 14, top: 14),
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        showConfirmpassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 20,
                        color:
                            showConfirmpassword ? Colors.black : Colors.purple,
                      ),
                      onPressed: () {
                        setState(() {
                          showConfirmpassword = !showConfirmpassword;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  alert();
                },
                child: const Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(300, 50),
                  primary: Colors.white,
                  elevation: 0,
                  side: BorderSide(
                    width: 1,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void alert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Column(
              children: const [
                Text(
                  'Success',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red,
                    fontFamily: "Poppins",
                  ),
                ),
                Text(
                  'Your Paasword have been successfully change.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  const Image(
                    image: AssetImage('assets/Group 10.png'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "Poppins",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(300, 50),
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1,
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
