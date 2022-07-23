import 'package:bookshop/theme.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _searchController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
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
            elevation: 0,
            backgroundColor: kWhiteColor,
            leading: IconButton(
              icon: Image.asset(
                'assets/icon_left.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: kTransparentColor,
              ),
              child: Center(
                child: TextField(
                  controller: _searchController,
                  cursorColor: kBlueColor,
                  cursorHeight: 16,
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
