import 'package:flutter/material.dart';

import '../data/dummy_gadgets.dart';
import '../routes/app_routes.dart';
import '../widgets/gadget_card.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: dummyGadgets.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, i) {
        final gadget = dummyGadgets[i];
        return GadgetCard(
          gadget: gadget,
          onTap: () =>
              Navigator.pushNamed(context, AppRoutes.detail, arguments: gadget),
        );
      },
    );
  }
}