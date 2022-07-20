import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class AuthorAvatar extends StatelessWidget {
  final String imageUrl;
  final String name;

  const AuthorAvatar({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 16,
      ),
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            margin: const EdgeInsets.only(
              bottom: 4,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
