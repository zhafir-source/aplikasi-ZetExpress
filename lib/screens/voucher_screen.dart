import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  static const _vouchers = ['Diskon 10%', 'Diskon 20%'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pilih Voucher')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Pilih diskon voucher Anda:',
                style: TextStyle(fontSize: 16, color: AppColors.muted)),
            const SizedBox(height: 16),
            for (final v in _vouchers) ...[
              _VoucherTile(
                  label: v, onTap: () => Navigator.pop(context, v)),
              const SizedBox(height: 12),
            ],
          ],
        ),
      ),
    );
  }
}

class _VoucherTile extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _VoucherTile({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(14);
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: const BorderSide(color: AppColors.border),
      ),
      child: InkWell(
        borderRadius: radius,
        onTap: onTap,
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const Icon(Icons.confirmation_number_outlined,
                  color: AppColors.accent),
              const SizedBox(width: 12),
              Text(label,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryDark)),
            ],
          ),
        ),
      ),
    );
  }
}