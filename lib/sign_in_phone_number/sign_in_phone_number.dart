import 'package:flutter/material.dart';

class SignInPhoneNumber extends StatefulWidget {
  const SignInPhoneNumber({Key? key}) : super(key: key);

  @override
  State<SignInPhoneNumber> createState() => _SignInPhoneNumberState();
}

class _SignInPhoneNumberState extends State<SignInPhoneNumber> {
  // ignore: prefer_typing_uninitialized_variables
  var _selectedCountryCode;

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
            padding: EdgeInsets.only(top: 95, bottom: 70),
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
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedCountryCode,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedCountryCode = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: '+1',
                        child: Text('+1'),
                      ),
                      DropdownMenuItem<String>(
                        value: '+91',
                        child: Text('+91'),
                      ),
                      DropdownMenuItem<String>(
                        value: '+44',
                        child: Text('+44'),
                      ),
                      DropdownMenuItem<String>(
                        value: '+61',
                        child: Text('+61'),
                      ),
                      // Add more country code options as needed
                    ],
                  ),
                ),
                hintText: 'Enter your mobile number',
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 104,
            height: 41,
            child: ElevatedButton(
              onPressed: () {
                // Action to perform when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF66A5AE),
              ),
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
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
