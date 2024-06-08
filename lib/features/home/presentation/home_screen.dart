
import 'package:flutter/material.dart';
import 'package:task_creative/features/home/presentation/widgets/banner_section.dart';
import 'package:task_creative/features/home/presentation/widgets/category_section.dart';
import 'package:task_creative/features/home/presentation/widgets/header_of_home_section.dart';
import 'package:task_creative/features/home/presentation/widgets/may_like_section.dart';
import 'package:task_creative/features/home/presentation/widgets/most_request_section.dart';
import 'package:task_creative/features/home/presentation/widgets/re_order_section.dart';
import 'package:task_creative/features/home/presentation/widgets/search_section.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const HeaderOfHomeSection(),
            const SizedBox(
              height: 16,
            ),
            SearchSection(),
            const SizedBox(
              height: 20,
            ),
            BannerSection(),
            const SizedBox(
              height: 23,
            ),
            const CategorySection(),
            const SizedBox(
              height: 26,
            ),
            const ReOrderSection(),
            const SizedBox(height: 24,),
            const MostRequestSection(),
            const SizedBox(height: 24,),
            const MayLikeSection()
        
        
        
          ],
        ),
      ),
    );
  }
}












