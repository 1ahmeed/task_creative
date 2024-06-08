import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../generated/l10n.dart';
import '../../models/category_model.dart';
import 'build_category_item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> category = [
      CategoryModel(image: AppAssets.categoriesCat1, title: S.of(context).quickOrder),
      CategoryModel(image: AppAssets.categoriesCat2, title: S.of(context).restaurants),
      CategoryModel(image: AppAssets.categoriesCat3, title: S.of(context).grocery),
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
            S.of(context).categories,
            style: AppStyles.textStyle21Black400,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildCategoryItem(
                  categoryModel: category[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: category.length),
          )
        ],
      ),
    );
  }
}
