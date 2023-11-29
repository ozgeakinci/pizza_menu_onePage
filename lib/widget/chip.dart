import 'package:flutter/material.dart';
import 'package:pizza_menu_page_flutter/colors.dart';

class TextButtonChip extends StatelessWidget {
  const TextButtonChip({required this.content, Key? key}) : super(key: key);
  final String content;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: primary),
      child: Text(
        content,
        style: TextStyle(color: primaryText),
      ),
    );
  }
}
