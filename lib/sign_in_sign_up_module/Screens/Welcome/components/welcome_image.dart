import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        const Text(
          "WELCOME to\n All Everything BD App",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 32, color: Colors.blue),
        ),
        const SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 7,
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
              ),
            ),
            const Spacer(),
          ],
        ),
        //const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
