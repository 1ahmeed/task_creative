
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../generated/l10n.dart';
import '../../models/re_order_model.dart';
import 'build_re_order_item.dart';

class ReOrderSection extends StatelessWidget {
  const ReOrderSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final List<ReOrderModel> preOrder = [
      ReOrderModel(
          image: AppAssets.preOrder1,
          title: S.of(context).hendyRestaurant,
          subTitle: S.of(context).familyMeal),
      ReOrderModel(
          image: AppAssets.preOrder2,
          title: S.of(context).quickOrder,
          subTitle: S.of(context).salamShop),
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
            S.of(context).reOrder,
            style: AppStyles.textStyle21Black400,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildReOrderItem(
                  reOrderModel: preOrder[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: preOrder.length),
          )
        ],
      ),
    );
  }
}
