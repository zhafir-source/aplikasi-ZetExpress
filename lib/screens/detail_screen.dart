import 'package:flutter/material.dart';

import '../models/gadget.dart';
import '../routes/app_routes.dart';
import '../theme/app_colors.dart';
import '../widgets/primary_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String? _voucher;

    Future<void> _pickVoucher() async {
    final result = await Navigator.pushNamed(context, AppRoutes.voucher);
    if (result is String) setState(() => _voucher = result);
  }

  @override
  Widget build(BuildContext context) {
    final gadget = ModalRoute.of(context)!.settings.arguments as Gadget;

    return Scaffold(
      appBar: AppBar(title: Text('Detail ${gadget.name}')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.tint,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(Icons.smartphone_outlined,
                    size: 96, color: AppColors.primary),
              ),
              const SizedBox(height: 16),
              _InfoRow(label: 'Nama', value: gadget.name),
              _InfoRow(label: 'Harga', value: gadget.priceLabel),
              _InfoRow(label: 'Voucher', value: _voucher ?? '–'),
              const Spacer(),
              PrimaryButton(
                  label: 'Klaim voucher diskon', onPressed: _pickVoucher),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.border)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(fontSize: 16, color: AppColors.muted)),
          Text(value,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}