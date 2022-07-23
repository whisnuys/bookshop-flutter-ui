import 'package:bookshop/theme.dart';
import 'package:bookshop/ui/widgets/book_card.dart';
import 'package:bookshop/ui/widgets/custom_appbar.dart';
import 'package:bookshop/ui/widgets/genre_item.dart';
import 'package:flutter/material.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget popularGenres() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 16,
              bottom: 16,
            ),
            child: Text(
              'Popular Genres',
              style: blackHeadingTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
          GridView(
            padding: EdgeInsets.only(bottom: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 120,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              GridGenreItem(
                imageUrl: 'assets/icon_books.png',
                title: 'General\nFiction',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_crime.png',
                title: 'Crime',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_knife.png',
                title: 'Thriller',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_romance.png',
                title: 'Romance',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_travel.png',
                title: 'Travel',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_sport.png',
                title: 'Sports',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_physics.png',
                title: 'Science\nFiction',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_hat.png',
                title: 'Fantasy',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_couple.png',
                title: 'Young Adult',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_children.png',
                title: 'Children\'s\nBooks',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_classic.png',
                title: 'Classics',
              ),
              GridGenreItem(
                imageUrl: 'assets/icon_leaf.png',
                title: 'Nature',
              ),
            ],
          ),
        ],
      );
    }

    Widget recommendedForYou() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 16,
            ),
            child: Text(
              'Recommended For You',
              style: blackHeadingTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BookCard(
                  imageUrl: 'assets/image_wishlist5.png',
                  bookName: 'Educated',
                  author: "Tara Westover",
                  price: '\$12.00',
                ),
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
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          leading: Center(
            child: Text(
              'Browse',
              style: greyOldTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            ),
          ),
          centerTitle: false,
          title: '',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          popularGenres(),
          recommendedForYou(),
        ],
      ),
    );
  }
}
