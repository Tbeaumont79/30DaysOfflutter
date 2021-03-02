import 'package:flutter/material.dart';

class MyContact extends StatelessWidget {
  const MyContact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('My contact Page',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/'),
            child: Icon(Icons.home, size: 40),
          ),
        ]),
      ),
    ));
  }
}
