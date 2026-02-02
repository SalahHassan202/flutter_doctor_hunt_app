import 'package:flutter/material.dart';

class NavBottomBar extends StatelessWidget {
  const NavBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _NavItem(active: true, icon: Icons.home_filled),
          _NavItem(active: false, icon: Icons.favorite_border),
          _NavItem(active: false, icon: Icons.bookmark_border),
          _NavItem(active: false, icon: Icons.chat_bubble_outline),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final bool active;
  final IconData icon;
  const _NavItem({required this.active, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: active ? Color(0xFF00C38A) : Colors.transparent,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(icon, color: active ? Colors.white : const Color(0xFF8A8A8A)),
    );
  }
}
