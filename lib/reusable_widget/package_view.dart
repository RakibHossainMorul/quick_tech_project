import 'package:flutter/material.dart';

class PackageView extends StatelessWidget {
  const PackageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 55),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        width: 260,
        child: Column(
          children: [
            Container(
              color: const Color(0xFF07A4B4),
              child: const Center(
                  child: Text(
                "Free Ads Package",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: const [
                  Text(
                    '199 ৳',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('/ listing',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Text('The ad will be live for 2 months'),
            const Divider(
              color: Colors.black,
              thickness: 0.5,
              indent: 40,
              endIndent: 40,
            ),
            const Text('You can provide a youtube video link'),
            const Divider(
              color: Colors.black,
              thickness: 1,
              indent: 40,
              endIndent: 40,
            ),
            const Text('Your ad will be live on the top slide'),
            ElevatedButton(onPressed: () {}, child: const Text('Login To Buy')),
          ],
        ),
      ),
    );
  }
}
