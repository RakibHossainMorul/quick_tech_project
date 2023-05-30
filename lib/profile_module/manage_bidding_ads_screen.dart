import 'package:flutter/material.dart';

class ManageBiddingAdsScreen extends StatelessWidget {
  const ManageBiddingAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Manage Bidding'),
        ),
        body: const Center(
            child: Text(
          'Manage Bidding Screen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
