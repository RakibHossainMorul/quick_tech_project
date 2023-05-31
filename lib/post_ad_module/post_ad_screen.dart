import 'package:flutter/material.dart';

class PostAdScreen extends StatelessWidget {
  const PostAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Ad"),
      ),
      body: const Center(
        child: Text('Ad Post Screen'),
      ),
    );
  }
}
