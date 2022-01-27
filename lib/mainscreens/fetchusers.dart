import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchUsers extends StatefulWidget {
  const FetchUsers({Key? key}) : super(key: key);

  @override
  _FetchUsersState createState() => _FetchUsersState();
}

class _FetchUsersState extends State<FetchUsers> {
  getUser() async {
    var users = [];
    var response =
        await http.get((Uri.https('jsonplaceholder.typicode.com', '/users')));
    var jsonData = jsonDecode(response.body);
    print(jsonData);
    for (var i in jsonData) {
      userModel user = userModel(i['name'], i['phone'], i['email']);
      users.add(user);
      print(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: FutureBuilder(
              future: getUser(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shadowColor: Colors.red,
                            child: ListTile(
                              title: Text(snapshot.data[i].name),
                              subtitle: Text(snapshot.data[i].email),
                              trailing: Text(snapshot.data[i].phone),
                            ),
                          ),
                        );
                      });
              }),
        ),
      ),
    );
  }
}

class userModel {
  var name;
  var phone;
  var email;
  userModel(this.name, this.phone, this.email);
}
