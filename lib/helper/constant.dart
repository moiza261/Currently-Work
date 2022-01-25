import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void openScreen(BuildContext context, Widget openScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => openScreen));
}

void showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
