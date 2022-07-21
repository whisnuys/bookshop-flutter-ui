// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import '../../cubit/screen_cubit.dart';
import '../../shared/theme.dart';
import './browse_screen.dart';
import './home_screen.dart';
import './profile_screen.dart';
import './wishlist_screen.dart';
import '../widgets/custom_bottomnav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomeScreen();
        case 1:
          return const BrowseScreen();
        case 2:
          return const WishlistScreen();
        case 3:
          return const ProfileScreen();
        default:
          return const HomeScreen();
      }
    }

    Widget customBottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 70,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: kWhiteColor,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF4E3737).withOpacity(0.15),
                offset: const Offset(0, -4),
                blurRadius: 16,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomBottomNavItem(
                index: 0,
                imageUrl: 'assets/icon_home.png',
                title: 'home',
              ),
              CustomBottomNavItem(
                index: 1,
                imageUrl: 'assets/icon_compass.png',
                title: 'browse',
              ),
              CustomBottomNavItem(
                index: 2,
                imageUrl: 'assets/icon_love.png',
                title: 'wishlist',
              ),
              CustomBottomNavItem(
                index: 3,
                imageUrl: 'assets/icon_user.png',
                title: 'profile',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<ScreenCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          body: Stack(
            children: [
              buildContent(state),
              customBottomNav(),
            ],
          ),
        );
      },
    );
  }
}
