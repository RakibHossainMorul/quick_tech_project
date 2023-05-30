import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Dashboard'),
        ),
        body: const Center(
            child: Text(
          'DashBoard Screen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
