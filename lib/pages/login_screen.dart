import 'package:flutter/cupertino.dart';
import 'home_screen.dart';
import 'register_screen.dart';
import './forgot_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Login'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoTextField(
              controller: usernameController,
              placeholder: 'Username',
              prefix: const Icon(CupertinoIcons.person),
            ),
            const SizedBox(height: 20),
            CupertinoTextField(
              controller: passwordController,
              placeholder: 'Password',
              obscureText: true,
              prefix: const Icon(CupertinoIcons.lock),
            ),
            const SizedBox(height: 30),
            CupertinoButton.filled(
              child: const Text('Login'),
              onPressed: () {
                // Placeholder validation
                if (usernameController.text == 'dun' &&
                    passwordController.text == 'duncan123') {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const HomeScreen()),
                  );
                } else {
                  showCupertinoDialog(
                    context: context,
                    builder: (_) => CupertinoAlertDialog(
                      title: const Text('Invalid Credentials'),
                      content: const Text('Please try again.'),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text('OK'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
            const SizedBox(height: 20),
            CupertinoButton(
              child: const Text('Forgot Password?'),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const ForgotPasswordScreen()),
                );
              },
            ),
            CupertinoButton(
              child: const Text('Register'),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const RegisterScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
