import 'package:flutter/material.dart';
import '../../theme.dart';

class CustomAppBar extends StatelessWidget {
  final bool centerTitle;
  final String title;
  final Widget leading;
  const CustomAppBar({
    Key? key,
    required this.centerTitle,
    required this.title,
    required this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4E3737).withOpacity(0.15),
            offset: const Offset(0, 4),
            blurRadius: 16,
          )
        ],
      ),
      child: AppBar(
        leading: leading,
        leadingWidth: 100,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    greyOldTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/search');
                    },
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
        centerTitle: centerTitle,
        titleSpacing: 0,
      ),
    );
  }
}
