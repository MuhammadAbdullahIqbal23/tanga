import 'package:flutter/material.dart';
import 'package:tanga/sign_in_phone_number/sign_in_phone_number.dart';

class LoginPageOption extends StatefulWidget {
  const LoginPageOption({Key? key}) : super(key: key);

  @override
  _LoginPageOptionState createState() => _LoginPageOptionState();
}

class _LoginPageOptionState extends State<LoginPageOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 228,
                width: 400,
                child: ColoredBox(
                  color: const Color(0xFF31515C),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Image.asset(
                      'assets/sign_in.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 78,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: 150,
                  height: 72,
                  child: Container(
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: const Text(
                      'tanga',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 68),
            child: Text(
              "Welcome!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 66, right: 220),
            child: Text(
              "Sign in",
              style: TextStyle(
                color: Color(0xFF31515C),
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInPhoneNumber(),
                  ),
                );
              },
              icon: const Icon(Icons.call),
              label: const Text("Use Phone Number"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF66A5AE),
                fixedSize: const Size(
                  311,
                  49,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInPhoneNumber(),
                  ),
                );
              },
              icon: const Icon(
                Icons.g_mobiledata,
                color: Colors.black,
                size: 30,
              ),
              label: const Text(
                "Sign in with Google",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFDFDFDF),
                fixedSize: const Size(
                  311,
                  49,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 90),
          TextButton(
            onPressed: () {
              // Action to perform when the Privacy Policy is clicked
            },
            child: const Text(
              "Click here to view our Privacy Policy.",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
