import 'package:flutter/material.dart';
import 'package:qrood/router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: const Center(child: Text('Profile Screen')),
      selectedIndex: 3,
    );
  }
}
