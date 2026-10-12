import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'primary_button.dart';

/// Tampilan sambutan (ikon, teks, tombol) untuk Login dan Profil.
class WelcomeHero extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onPressed;

  const WelcomeHero({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(28),
              ),
              child: const Icon(Icons.inventory_2_outlined,
                  size: 48, color: Colors.white),
            ),
            const SizedBox(height: 24),
            const Text('Selamat datang di',
                style: TextStyle(fontSize: 16, color: AppColors.muted)),
            const SizedBox(height: 8),
            Text.rich(
              const TextSpan(children: [
                TextSpan(
                    text: 'Zet', style: TextStyle(color: AppColors.primaryDark)),
                TextSpan(
                    text: 'Express', style: TextStyle(color: AppColors.primary)),
              ]),
              style: const TextStyle(
                  fontSize: 36, fontWeight: FontWeight.w800, letterSpacing: -1),
            ),
            const SizedBox(height: 32),
            PrimaryButton(label: buttonLabel, onPressed: onPressed),
          ],
        ),
      ),
    );
  }
}