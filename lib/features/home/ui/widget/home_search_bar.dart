import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  final Function(String) onTextUpdated;

  const HomeSearchBar({super.key, required this.onTextUpdated});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        onChanged: (value) {
          onTextUpdated(value);
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }
}
