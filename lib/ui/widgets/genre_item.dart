import 'package:flutter/material.dart';
import '../../theme.dart';

class GridGenreItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  const GridGenreItem({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 76,
          height: 76,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kWhiteColor,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF4E3737).withOpacity(0.10),
                offset: const Offset(1, 1),
                blurRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: greyOldTextStyle.copyWith(
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
