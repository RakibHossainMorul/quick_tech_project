import 'package:flutter/material.dart';

class SavedNilamAdsScreen extends StatelessWidget {
  const SavedNilamAdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Saved Nilam Ads'),
        ),
        body: const Center(
            child: Text(
          'Saved Nilam Screen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
