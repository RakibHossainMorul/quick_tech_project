import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        body: const Center(
            child: Text(
          'EditProfileScreen',
          style: TextStyle(color: Colors.amber, fontSize: 30),
        )));
  }
}
