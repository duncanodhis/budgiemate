import 'package:flutter/cupertino.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Register'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(placeholder: 'Name'),
            const SizedBox(height: 10),
            CupertinoTextField(placeholder: 'Email'),
            const SizedBox(height: 10),
            CupertinoTextField(placeholder: 'Password', obscureText: true),
            const SizedBox(height: 10),
            CupertinoTextField(
                placeholder: 'Confirm Password', obscureText: true),
            const SizedBox(height: 20),
            CupertinoButton.filled(
              child: const Text('Register'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
