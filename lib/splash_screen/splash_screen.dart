import 'package:flutter/material.dart';
import '../sign_options/sign_option_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPageOption()),
        );
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 95, right: 20, top: 240),
              child: Text(
                'tanga',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 64,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Image.asset(
                  'assets/frame.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
