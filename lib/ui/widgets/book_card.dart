import 'package:animations/animations.dart';
import '../screens/detail_screen.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class BookCard extends StatelessWidget {
  final String imageUrl;
  final String bookName;
  final String author;
  final double width;
  final double height;
  final String price;

  const BookCard({
    Key? key,
    required this.imageUrl,
    required this.bookName,
    required this.author,
    this.width = 143,
    this.height = 216,
    this.price = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: kWhiteColor,
      openElevation: 0,
      closedElevation: 0,
      transitionType: ContainerTransitionType.fadeThrough,
      closedBuilder: (BuildContext _, VoidCallback openContainer) {
        return GestureDetector(
          onTap: openContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                height: height,
                margin: const EdgeInsets.only(
                  bottom: 8,
                  right: 16,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                  ),
                ),
              ),
              Text(
                bookName,
                style: blackHeadingTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
              Text(
                author,
                style: greyOldTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                price,
                style:
                    redTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
              ),
            ],
          ),
        );
      },
      openBuilder: (BuildContext _, VoidCallback __) {
        return const DetailScreen();
      },
    );
  }
}
