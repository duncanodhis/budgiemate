import 'package:flutter/cupertino.dart';
import 'otp_verification_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Forgot Password'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(placeholder: 'Email or Phone Number'),
            const SizedBox(height: 20),
            CupertinoButton.filled(
              child: const Text('Send OTP'),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const OTPVerificationScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
