import 'package:flutter/material.dart';
import 'package:notes_app/widgets/coutom_Buttom_search.dart';

class coustomAppBar extends StatelessWidget {
  const coustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        coustomButtomShearch(icon: icon),
      ],
    );
  }
}
