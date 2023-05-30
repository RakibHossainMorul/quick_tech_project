import 'package:flutter/material.dart';

class SavedAdsScreen extends StatelessWidget {
  const SavedAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Saved Ads'),
        ),
        body: const Center(
            child: Text(
          'Saved ads Screen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
