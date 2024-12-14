import 'package:flutter/cupertino.dart';
import 'reset_password_screen.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('OTP Verification'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(placeholder: 'Enter OTP'),
            const SizedBox(height: 20),
            CupertinoButton.filled(
              child: const Text('Verify'),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const ResetPasswordScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
