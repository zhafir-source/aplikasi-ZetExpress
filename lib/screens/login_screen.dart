import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../widgets/welcome_hero.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: WelcomeHero(
        buttonLabel: 'Masuk ke aplikasi',
        onPressed: () =>
            Navigator.pushReplacementNamed(context, AppRoutes.home),
      ),
    );
  }
}