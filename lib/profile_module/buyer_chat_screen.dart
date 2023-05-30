import 'package:flutter/material.dart';

class BuyerChatScreen extends StatelessWidget {
  const BuyerChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buyer Chat Screen'),
        ),
        body: const Center(
            child: Text(
          'Buyer Chat Screen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
