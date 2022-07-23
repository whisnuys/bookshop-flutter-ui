import 'package:bookshop/theme.dart';
import 'package:bookshop/ui/widgets/book_card.dart';
import 'package:bookshop/ui/widgets/custom_chip.dart';

import '../widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget detailBook() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 24,
              bottom: 8,
            ),
            width: 143,
            height: 216,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_arrival1.png',
                ),
              ),
            ),
          ),
          Text(
            'Conversations with Friends',
            style: blackHeadingTextStyle.copyWith(
              fontSize: 25,
              fontWeight: bold,
            ),
          ),
          Text(
            'Sally Rooney',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          Text(
            'Paperback  |  2nd Edition',
            style: greyTextStyle.copyWith(
              fontSize: 12,
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '\$12.90',
            style: blackHeadingTextStyle.copyWith(
              fontSize: 25,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Novel about two college students and the strange, unexpected connection they forge with a married couple.',
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ],
      );
    }

    Widget buttonCartWishlist() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 22),
            child: InkWell(
              splashColor: kPinkColor,
              onTap: () {},
              child: Ink(
                width: 296,
                height: 40,
                decoration: BoxDecoration(
                  color: kRedColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Add to cart'.toUpperCase(),
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: InkWell(
              onTap: () {},
              splashColor: kRedColor,
              child: Ink(
                width: 296,
                height: 40,
                decoration: BoxDecoration(
                  color: kPinkColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Wishlist'.toUpperCase(),
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget subDetail() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 32,
              bottom: 24,
            ),
            child: Text(
              'Publisher: Faber & Faber\nDate Published: 1 March 2018\nISBN13: 9780571333134',
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Genres',
              style: greyOldTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomChip(
                title: 'Contemporary',
                beginGradient: kYellowColor,
                endGradient: kPinkColor,
              ),
              const SizedBox(
                width: 8,
              ),
              CustomChip(
                title: 'General Fiction',
                beginGradient: kBlueColor,
                endGradient: kBabyBlueColor,
              ),
            ],
          ),
        ],
      );
    }

    Widget socialShare() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 8,
              top: 32,
            ),
            child: Text(
              'Share this book',
              style: greyOldTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/facebook.png',
                  width: 40,
                  height: 42,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/instagram.png',
                  width: 40,
                  height: 42,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/twitter.png',
                  width: 40,
                  height: 42,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/email.png',
                  width: 40,
                  height: 42,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/link.png',
                  width: 40,
                  height: 42,
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget similarPublications() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 16,
              top: 32,
            ),
            child: Text(
              'Similar Publications',
              style: blackHeadingTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(bottom: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BookCard(
                  imageUrl: 'assets/image_similar1.png',
                  bookName: 'Promising Young\nWomen',
                  author: "Caroline O'Donoghue",
                  price: '\$9.80',
                ),
                BookCard(
                  imageUrl: 'assets/image_similar2.png',
                  bookName: 'Careers for Women',
                  author: 'Joanna Scott',
                  price: '\$10.50',
                ),
                BookCard(
                  imageUrl: 'assets/image_similar3.png',
                  bookName: 'Inside these Walls',
                  author: 'Rebecca Coleman',
                  price: '\$8.20',
                ),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          centerTitle: false,
          title: '',
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              'assets/icon_left.png',
              width: 22,
              height: 22,
              alignment: Alignment.centerLeft,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          detailBook(),
          buttonCartWishlist(),
          subDetail(),
          socialShare(),
          similarPublications(),
        ],
      ),
    );
  }
}
