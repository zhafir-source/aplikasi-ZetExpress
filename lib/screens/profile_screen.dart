import 'package:flutter/material.dart';

import '../widgets/welcome_hero.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WelcomeHero(
      buttonLabel: 'Masuk ke aplikasi',
      onPressed: () {}, // dummy, sesuai desain
    );
  }
}