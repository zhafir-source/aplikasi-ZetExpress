class Gadget {
  final String name;
  final int price;

  const Gadget({required this.name, required this.price});

  /// Contoh: 1500000 -> "Rp 1.500.000"
  String get priceLabel {
    final s = price.toString();
    final buf = StringBuffer();
    for (var i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buf.write('.');
      buf.write(s[i]);
    }
    return 'Rp $buf';
  }
}