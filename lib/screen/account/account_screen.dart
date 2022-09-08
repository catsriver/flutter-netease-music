import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
      ),
      body: const Center(
        child: Text(
          '垂直居中x',
          style: TextStyle(
            backgroundColor: Colors.pink,
            fontSize: 22.0,
            height: 2.0,
          ),
        ),
      ),
    );
  }
}
