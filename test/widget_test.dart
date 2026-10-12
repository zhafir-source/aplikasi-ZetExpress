import 'package:flutter_test/flutter_test.dart';

import 'package:ulangan_flutter/main.dart';

void main() {
  testWidgets('Login membuka katalog', (WidgetTester tester) async {
    await tester.pumpWidget(const ZetExpressApp());

    // Layar login tampil.
    expect(find.text('Selamat datang di'), findsOneWidget);

    // Tekan tombol masuk, lalu katalog tampil.
    await tester.tap(find.text('Masuk ke aplikasi'));
    await tester.pumpAndSettle();

    expect(find.text('Gadget Alpha'), findsOneWidget);
  });
}