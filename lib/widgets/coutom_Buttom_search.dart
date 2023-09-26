import 'package:flutter/material.dart';

class coustomButtomShearch extends StatelessWidget {
  const coustomButtomShearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: const Center(
        child: Icon(Icons.search, size: 28),
      ),
    );
  }
}
