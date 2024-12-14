import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';
import 'pages/login_screen.dart';
import 'pages/register_screen.dart';
import 'pages/forgot_password.dart';
import 'pages/otp_verification_screen.dart';
import 'pages/reset_password_screen.dart';
import 'pages/home_screen.dart';

void main() {
  runApp(const BudgiemateApp());
}

class BudgiemateApp extends StatelessWidget {
  const BudgiemateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budgiemate',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(), // Splash Screen
        '/login': (context) => const LoginScreen(), // Login Screen
        '/register': (context) => const RegisterScreen(), // Register Screen
        '/forgot_password': (context) =>
            const ForgotPasswordScreen(), // Forgot Password Screen
        '/otp_verification': (context) =>
            const OTPVerificationScreen(), // OTP Screen
        '/reset_password': (context) =>
            const ResetPasswordScreen(), // Reset Password
        '/home': (context) => const HomeScreen(), // Home Screen
      },
    );
  }
}
