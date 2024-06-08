
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../generated/l10n.dart';
import '../../models/may_like_model.dart';
import 'build_may_like_item.dart';

class MayLikeSection extends StatelessWidget {
  const MayLikeSection({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final List<MayLikeModel> mayLike = [
      MayLikeModel(
        imageOfMeal: AppAssets.mayLike,
        imageOfRestaurant: AppAssets.preOrder2,
        nameOfMeal: S.of(context).akeelaMeal,
        nameOfRestaurant: S.of(context).hendyRestaurant,
        newPrice: S.of(context).p30,
        oldPrice: S.of(context).p60,

      ),
      MayLikeModel(
        imageOfMeal: AppAssets.mayLike,
        imageOfRestaurant: AppAssets.preOrder2,
        nameOfMeal: S.of(context).akeelaMeal,
        nameOfRestaurant: S.of(context).hendyRestaurant,
        newPrice: S.of(context).p30,
        oldPrice: S.of(context).p60,

      ),
      MayLikeModel(
        imageOfMeal: AppAssets.mayLike,
        imageOfRestaurant: AppAssets.preOrder2,
        nameOfMeal: S.of(context).akeelaMeal,
        nameOfRestaurant: S.of(context).hendyRestaurant,
        newPrice: S.of(context).p30,
        oldPrice: S.of(context).p60,

      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Text(
            S.of(context).mayLike,
            style: AppStyles.textStyle21Black400,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildMayLikeItem(
                  mayLikeModel: mayLike[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: mayLike.length),
          ),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}