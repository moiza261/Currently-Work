import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobistylez/helper/constant.dart';
import 'package:mobistylez/helper/myTextField.dart';
import 'package:mobistylez/screens/authentication/login.dart';
import 'package:mobistylez/screens/clients_delivery.dart';
import 'package:http/http.dart' as http;

class Regsiter extends StatefulWidget {
  const Regsiter({Key? key}) : super(key: key);

  @override
  _RegsiterState createState() => _RegsiterState();
}

class _RegsiterState extends State<Regsiter> {
  late String name, email, phone;
  final _formKey = GlobalKey<FormState>();
  String buttonText = 'Next';
  File? _pickedImage;

  void _pickImageCamera() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);
    final pickedImageFile = File(pickedImage!.path);
    setState(() {
      _pickedImage = pickedImageFile;
    });
    Navigator.pop(context);
  }

  void _pickImageGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    final pickedImageFile = File(pickedImage!.path);
    setState(() {
      _pickedImage = pickedImageFile;
    });
    Navigator.pop(context);
  }

  int _currentindex = 0;
  List<Step> stepList() => [
        Step(
          state: _currentindex <= 0 ? StepState.editing : StepState.complete,
          isActive: _currentindex >= 0,
          title: const Text(
            '1',
            style: TextStyle(color: Colors.red),
          ),
          content: Form(
            key: _formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    'Profile Details',
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                ),
                MyTextField(
                    "First & Last  Name", 5.0, 10.0, 5.0, nameController),
                const SizedBox(
                  height: 10,
                ),
                MyTextField("Email", 5.0, 10.0, 5.0, emailController),
                const SizedBox(
                  height: 10,
                ),
                MyTextField("Mobile Phone", 5.0, 10.0, 5.0, phoneController),
                const SizedBox(
                  height: 10,
                ),
                MyTextField("Password", 5.0, 10.0, 5.0, passwordController),
                const SizedBox(
                  height: 10,
                ),
                MyTextField("Confirm Password", 5.0, 10.0, 5.0,
                    confirmPasswordController),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      const Text(
                        'Already have an account',
                        style: TextStyle(fontFamily: "Poppins", fontSize: 13),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          openScreen(context, const Login());
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: "Poppins",
                              fontSize: 13),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        Step(
          state: _currentindex <= 1 ? StepState.editing : StepState.complete,
          isActive: _currentindex >= 1,
          title: Text('2'),
          content: Column(
            children: [
              const Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Upload Documents',
                  style: TextStyle(fontFamily: "Poppins"),
                ),
              ),
              ListTile(
                leading: const Text(
                  'Profile Photo',
                  style: TextStyle(fontFamily: "Poppins"),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    uploadpic();
                  },
                  child: Image(image: AssetImage('assets/cloud-computing.png')),
                ),
              ),
              ListTile(
                leading: const Text(
                  'Person ID Card',
                  style: TextStyle(fontFamily: "Poppins"),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    uploadpic();
                  },
                  child: Image(image: AssetImage('assets/cloud-computing.png')),
                ),
              ),
              ListTile(
                leading: const Text(
                  'Driving License',
                  style: TextStyle(fontFamily: "Poppins"),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    uploadpic();
                  },
                  child: Image(image: AssetImage('assets/cloud-computing.png')),
                ),
              ),
              ListTile(
                leading: const Text(
                  'Work Permit (Optional)',
                  style: TextStyle(fontFamily: "Poppins"),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    uploadpic();
                  },
                  child: Image(image: AssetImage('assets/cloud-computing.png')),
                ),
              ),
            ],
          ),
        ),
        Step(
            state: StepState.complete,
            isActive: _currentindex >= 2,
            title: Text('3'),
            content: Column()),
      ];

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          'Complete Your Profile',
          style: TextStyle(
              fontFamily: "Poppins", color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Theme(
        data: ThemeData(
          accentColor: Colors.red,
          primarySwatch: Colors.red,
          colorScheme: ColorScheme.light(primary: Colors.red),
        ),
        child: Stepper(
          type: StepperType.horizontal,
          elevation: 0,
          controlsBuilder: (BuildContext context, details) {
            return ElevatedButton(
              onPressed: () {
                // if (_currentindex < (stepList().length - 1)) {
                //   _currentindex += 1;
                // }
                if (_formKey.currentState!.validate()) {
                  showSnackbar(context, 'Processing Data');
                  if (_currentindex < (stepList().length - 1)) {
                    _currentindex += 1;
                  }
                  RegisteredUser();
                }
                buttonText = buttonText;
                setState(() {
                  buttonTextChange();
                  diaglogbox();
                });
              },
              child: Text(
                buttonText,
                style: TextStyle(color: Colors.red),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  primary: Colors.white,
                  side: const BorderSide(
                    color: Colors.red,
                  ),
                  fixedSize: const Size(150, 50)),
            );
          },
          currentStep: _currentindex,
          onStepContinue: () {
            if (_currentindex < (stepList().length - 1)) {
              _currentindex += 1;
            }
            setState(() {});
          },
          onStepCancel: () {
            if (_currentindex == 0) {
              return;
            }
            _currentindex -= 1;
            setState(() {});
          },
          steps: stepList(),
        ),
      ),
    );
  }

  void uploadpic() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Choose Options',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  InkWell(
                    onTap: _pickImageCamera,
                    splashColor: Colors.redAccent,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.camera,
                            color: Colors.redAccent,
                          ),
                        ),
                        Text(
                          'Camera',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: _pickImageGallery,
                    splashColor: Colors.redAccent,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.image,
                            color: Colors.redAccent,
                          ),
                        ),
                        Text(
                          'Gallery',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: new Text("Sucess")),
          content: new Text("You are awesome!"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  buttonTextChange() {
    if (_currentindex == 1) {
      buttonText = 'Submit';
    } else {
      buttonText = 'NEXT';
    }
  }

  diaglogbox() {
    if (_currentindex == 2) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Column(
              children: const [
                Text(
                  'Success',
                  style: TextStyle(color: Colors.red),
                ),
                Text(
                  'Your Profile have been submitted',
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            content: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/Group 10.png'),
                    height: 80,
                  ),
                  const Text(
                    'Well notify you are after verified your profile',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Poppins",
                        fontSize: 12),
                  ),
                  const Text(
                    'and you will coming along with Documents in our Office',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Poppins",
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => false);
                      // openScreen(context, Login());
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.red),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        primary: Colors.white,
                        side: const BorderSide(
                          color: Colors.red,
                        ),
                        fixedSize: const Size(180, 50)),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      return null;
    }
  }

  Future RegisteredUser() async {
    var ApiUrl = 'https://hello-deployment.herokuapp.com/create';
    Map mapdtata = {
      'Name': nameController.text,
      "Email": emailController.text,
      "phone": phoneController.text,
      "password": passwordController.text,
    };
    print('Json Data : ${mapdtata}');
    http.Response response = await http.post(Uri.parse(ApiUrl), body: mapdtata);
    var data = jsonDecode(response.body);
    openScreen(context, Login());
    showSnackbar(context, 'User Created');
    print('DATA : ${data}');
  }
}
