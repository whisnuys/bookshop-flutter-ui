// ignore_for_file: prefer_const_constructors

import '/cubit/screen_cubit.dart';
import 'ui/screens/browse_screen.dart';
import 'ui/screens/main_screen.dart';
import 'ui/screens/profile_screen.dart';
import 'ui/screens/search_screen.dart';
import 'ui/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScreenCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => MainScreen(),
          '/home': (context) => HomeScreen(),
          '/browse': (context) => BrowseScreen(),
          '/profile': (context) => ProfileScreen(),
          '/search': (context) => SearchScreen(),
          '/detail': (context) => DetailScreen(),
        },
      ),
    );
  }
}
