import 'package:flutter/material.dart';

class SellerChatScreen extends StatelessWidget {
  const SellerChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        body: const Center(
            child: Text(
          'Seller Chat Screen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
