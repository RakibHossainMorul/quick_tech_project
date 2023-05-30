import 'package:flutter/material.dart';

class ManageAdsScreen extends StatelessWidget {
  const ManageAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Manage Ads'),
        ),
        body: const Center(
            child: Text(
          'Manage Ads Screen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
