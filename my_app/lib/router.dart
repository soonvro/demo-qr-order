import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qrood/constants.dart';
import 'package:qrood/screens/home_screen.dart';
import 'package:qrood/screens/menu_screen.dart';
import 'package:qrood/screens/cart_screen.dart';
import 'package:qrood/screens/profile_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/menu', builder: (context, state) => const MenuScreen()),
    GoRoute(path: '/cart', builder: (context, state) => const CartScreen()),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);

class AppScaffold extends StatelessWidget {
  final Widget child;
  final int selectedIndex;

  const AppScaffold({
    super.key,
    required this.child,
    required this.selectedIndex,
  });

  static const List<String> _routes = ['/home', '/menu', '/cart', '/profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: bodyTextColor,
        onTap: (index) {
          context.go(_routes[index]);
        },
        items: const [
          BottomNavigationBarItem(
            icon: _NavIcon('assets/icons/home.svg'),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: _NavIcon('assets/icons/menu.svg'),
            label: 'Menu',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: _NavIcon('assets/icons/cart.svg'),
            label: 'Cart',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: _NavIcon('assets/icons/profile.svg'),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  final String asset;
  const _NavIcon(this.asset);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(asset, height: 30, width: 30);
  }
}
