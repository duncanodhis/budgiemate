import 'package:flutter/cupertino.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Reset Password'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(placeholder: 'New Password', obscureText: true),
            const SizedBox(height: 10),
            CupertinoTextField(
                placeholder: 'Confirm Password', obscureText: true),
            const SizedBox(height: 20),
            CupertinoButton.filled(
              child: const Text('Reset Password'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
