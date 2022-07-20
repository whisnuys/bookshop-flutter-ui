// ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_literals_to_create_immutables

import '../../shared/theme.dart';
import '../widgets/author_avatar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          top: 48,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back,\nJessica!',
              style: blackHeadingTextStyle.copyWith(
                  fontSize: 32, fontWeight: bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "We’re glad to see you just 16 days after your last visit and can’t wait to help you find your next page turner!",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularList() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              top: 52,
              bottom: 8,
            ),
            child: Text(
              'Popular List',
              style: blackHeadingTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              left: defaultMargin,
            ),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 216,
                  height: 128,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_list1.png'),
                    ),
                  ),
                ),
                Container(
                  width: 216,
                  height: 128,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_list2.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget authors() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              top: 40,
              bottom: 16,
            ),
            child: Text(
              'Top Authors',
              style: blackHeadingTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: defaultMargin,
            ),
            child: Row(
              children: [
                AuthorAvatar(
                  imageUrl: 'assets/avatar6.png',
                  name: 'Victoria\nEdwards',
                ),
                AuthorAvatar(
                  imageUrl: 'assets/avatar1.png',
                  name: 'Connie\nLane',
                ),
                AuthorAvatar(
                  imageUrl: 'assets/avatar2.png',
                  name: 'Wade\nRicards',
                ),
                AuthorAvatar(
                  imageUrl: 'assets/avatar3.png',
                  name: 'Mitchell\nCooper',
                ),
                AuthorAvatar(
                  imageUrl: 'assets/avatar4.png',
                  name: 'Irma\nBell',
                ),
                AuthorAvatar(
                  imageUrl: 'assets/avatar5.png',
                  name: 'Darlene\nSteward',
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFF4E3737).withOpacity(0.15),
                offset: Offset(0, 4),
                blurRadius: 16,
              )
            ],
          ),
          child: AppBar(
            title: Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: greyOldTextStyle.copyWith(
                        fontSize: 16, fontWeight: bold),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icon_search.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icon_basket.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            elevation: 0,
            backgroundColor: kWhiteColor,
            centerTitle: false,
            titleSpacing: 0,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            popularList(),
            authors(),
          ],
        ),
      ),
    );
  }
}
