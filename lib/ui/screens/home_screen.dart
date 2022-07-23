import 'package:bookshop/ui/widgets/book_card.dart';
import 'package:bookshop/ui/widgets/custom_appbar.dart';

import '../../theme.dart';
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
            const SizedBox(
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
              bottom: 16,
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
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_list1.png'),
                    ),
                  ),
                ),
                Container(
                  width: 216,
                  height: 128,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
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
              children: const [
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

    Widget latestArrivals() {
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
              'Latest Arrivals',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BookCard(
                  imageUrl: 'assets/image_arrival1.png',
                  bookName: 'Conversations\nwith Friends',
                  author: 'Sally Rooney',
                ),
                BookCard(
                    imageUrl: 'assets/image_arrival2.png',
                    bookName: 'The world doesn’t \nrequire you',
                    author: 'Rion Amilcar Scott'),
                BookCard(
                  imageUrl: 'assets/image_arrival3.png',
                  bookName: 'The last\nwidow',
                  author: 'Karin Slaughter',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          )
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
              'Home',
              style: greyOldTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            ),
          ),
          centerTitle: false,
          title: '',
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            popularList(),
            authors(),
            latestArrivals(),
          ],
        ),
      ),
    );
  }
}
