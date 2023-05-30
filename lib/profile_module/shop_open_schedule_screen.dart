import 'package:flutter/material.dart';

class ShopOpenScheduleScreen extends StatelessWidget {
  const ShopOpenScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shop Open Schedule'),
        ),
        body: const Center(
            child: Text(
          'Shop Open Schedule Screen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
