import 'package:flutter/material.dart';
import 'package:qrood/router.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: const Center(child: Text('Cart Screen')),
      selectedIndex: 2,
    );
  }
}
