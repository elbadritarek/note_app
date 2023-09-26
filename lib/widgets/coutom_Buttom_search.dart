import 'package:flutter/material.dart';

class coustomButtomShearch extends StatelessWidget {
  const coustomButtomShearch({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Center(
        child: Icon(icon, size: 28),
      ),
    );
  }
}
