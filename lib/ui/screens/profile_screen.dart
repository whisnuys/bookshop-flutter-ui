import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custom_appbar.dart';
import '../../theme.dart';
import '../widgets/book_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget profileUser() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40,
              bottom: 16,
            ),
            width: 128,
            height: 131,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/avatar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Jessica Mapleton',
            style: blackHeadingTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Cape Town, South Africa'.toUpperCase(),
            style: greyTextStyle.copyWith(
              fontSize: 10,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Following',
                    style: greyOldTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '2,1k',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Followers',
                    style: greyOldTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '945k',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    }

    Widget chipGenre() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 48,
              bottom: 16,
            ),
            child: Text(
              'Favorites Genres',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              CustomChip(
                title: 'African',
                beginGradient: kBlueColor,
                endGradient: kBabyBlueColor,
              ),
              CustomChip(
                title: 'Classics',
                beginGradient: kPinkColor,
                endGradient: kRedColor,
              ),
              CustomChip(
                title: 'Contemporary',
                beginGradient: kYellowColor,
                endGradient: kPinkColor,
              ),
              CustomChip(
                title: 'Feminist Literature',
                beginGradient: kYellowColor,
                endGradient: kPinkColor,
              ),
              CustomChip(
                title: 'Memoirs',
                beginGradient: kBabyBlueColor,
                endGradient: kYellowColor,
              ),
              CustomChip(
                title: 'Psychological Thrillers',
                beginGradient: kRedColor,
                endGradient: kYellowColor,
              ),
              CustomChip(
                title: 'True Crime',
                beginGradient: kBlueColor,
                endGradient: kBabyBlueColor,
              ),
            ],
          )
        ],
      );
    }

    Widget purchasedBooks() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 48,
              bottom: 16,
            ),
            child: Row(
              children: [
                Text(
                  'Purchased Books',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '19',
                  style: blueTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BookCard(
                  imageUrl: 'assets/image_purchased1.png',
                  bookName: 'Little Fires\nEverywhere',
                  author: 'Celeste Ng',
                ),
                BookCard(
                    imageUrl: 'assets/image_purchased2.png',
                    bookName: 'All the Pretty\nHorses',
                    author: 'Cormac McCarthy'),
                BookCard(
                  imageUrl: 'assets/image_purchased3.png',
                  bookName: 'The Handmaid’s\nTale',
                  author: 'Margaret Atwood',
                ),
                BookCard(
                  imageUrl: 'assets/image_purchased4.png',
                  bookName: 'The Great\nGatsby',
                  author: 'F. Scott Fitzgerald',
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 18,
            ),
            child: Center(
              child: Text(
                'View all Purchased Books',
                style: redTextStyle.copyWith(
                  color: kTransparentColor,
                  fontSize: 12,
                  fontWeight: semiBold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: kRedColor,
                  shadows: [
                    Shadow(
                      color: kRedColor,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget wishListBooks() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 48,
              bottom: 16,
            ),
            child: Row(
              children: [
                Text(
                  'Wishlist',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '24',
                  style: blueTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          StaggeredGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              Image.asset(
                'assets/image_wishlist6.png',
              ),
              Image.asset(
                'assets/image_wishlist1.png',
              ),
              Image.asset(
                'assets/image_wishlist2.png',
              ),
              Image.asset(
                'assets/image_wishlist3.png',
              ),
              Image.asset(
                'assets/image_wishlist4.png',
              ),
              Image.asset(
                'assets/image_wishlist5.png',
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 32,
            ),
            child: Center(
              child: Text(
                'View all Wishlist Books',
                style: redTextStyle.copyWith(
                  color: kTransparentColor,
                  fontSize: 12,
                  fontWeight: semiBold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: kRedColor,
                  shadows: [
                    Shadow(
                      color: kRedColor,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          leading: Center(
            child: Text(
              'Profile',
              style: greyOldTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            ),
          ),
          centerTitle: false,
          title: '',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          profileUser(),
          chipGenre(),
          purchasedBooks(),
          wishListBooks(),
        ],
      ),
    );
  }
}
