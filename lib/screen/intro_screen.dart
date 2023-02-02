import 'package:flutter/material.dart';
import 'package:pulse/screen/home_screen.dart';
import 'package:pulse/screen/login_screen.dart';
import 'package:pulse/screen/sign_up_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F3892),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/pulse_background.png',
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/pulse_logo_transparent.png',
                  width: MediaQuery.of(context).size.width,
                ),
                MaterialButton(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  minWidth: MediaQuery.of(context).size.width * 0.6,
                  color: const Color(0xFF0F3892),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                MaterialButton(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  minWidth: MediaQuery.of(context).size.width * 0.6,
                  color: const Color(0xFF0F3892),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
                  },
                  child: const Text(
                    'Proceed as Guest',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
