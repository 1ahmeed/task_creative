import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_creative/features/home/models/banner_model.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';

class BannerSection extends StatelessWidget {
  BannerSection({
    super.key,
  });

  final List<BannerModel> banner = [
    BannerModel(image: AppAssets.bannersBanner),
    BannerModel(image: AppAssets.bannersBanner),
    BannerModel(image: AppAssets.bannersBanner),
    BannerModel(image: AppAssets.bannersBanner),
  ];

  // CarouselController carouselController=CarouselController();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160,
          width: double.infinity,
          child: PageView.builder(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Image.asset(
                banner[index].image,
                fit: BoxFit.fill,
              );
            },
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: AppColors.teal,
              dotColor: AppColors.lemon,
            ),
          ),
        ),
      ],
    );
  }
}
