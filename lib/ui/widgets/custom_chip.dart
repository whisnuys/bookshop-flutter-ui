import 'package:flutter/material.dart';
import '../../theme.dart';

class CustomChip extends StatelessWidget {
  final String title;
  final Color beginGradient;
  final Color endGradient;

  const CustomChip(
      {Key? key,
      required this.title,
      required this.beginGradient,
      required this.endGradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            beginGradient,
            endGradient,
          ],
        ),
      ),
      child: Text(
        title,
        style: whiteTextStyle.copyWith(
          fontSize: 12,
          fontWeight: bold,
        ),
      ),
    );
  }
}
