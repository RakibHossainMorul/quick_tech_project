import 'package:flutter/material.dart';

import '../home_module/home_screen.dart';
import '../reusable_widget/package_view.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Package'),
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          ),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: const <Widget>[
              SizedBox(height: 20),
              PackageView(),
              SizedBox(height: 20),
              PackageView(),
              SizedBox(height: 20),
              PackageView(),
              SizedBox(height: 20),
              PackageView(),
              SizedBox(height: 20),
              PackageView(),
              SizedBox(height: 20),
              PackageView(),
              SizedBox(height: 20),
              PackageView(),
              SizedBox(height: 20),
              PackageView(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
