import 'package:bookshop/cubit/screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class CustomBottomNavItem extends StatelessWidget {
  final int index;
  final String title;
  final String imageUrl;

  const CustomBottomNavItem(
      {Key? key,
      required this.index,
      required this.title,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ScreenCubit>().setScreen(index);
      },
      child: Column(
        children: [
          const SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<ScreenCubit>().state == index
                ? kBlueColor
                : kBabyBlueColor,
          ),
          Text(
            title,
            style: context.read<ScreenCubit>().state == index
                ? blueTextStyle.copyWith(fontSize: 10)
                : babyBlueTextStyle.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
