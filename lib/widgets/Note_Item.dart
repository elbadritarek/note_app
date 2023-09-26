import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffffcd7b),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24.0,
          bottom: 24,
          left: 22,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Flutter Tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            subtitle: Text(
              "Build your Career with Tarek Bouzid Elbadri",
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 16,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                size: 22,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 26.0),
            child: Text(
              "Sep26,2023",
              style: TextStyle(
                color: Colors.black.withOpacity(.4),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
