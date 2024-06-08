
import 'package:flutter/material.dart';
import 'package:task_creative/features/home/models/category_model.dart';

import '../../../../core/utils/app_styles.dart';

class BuildCategoryItem extends StatelessWidget {
  const BuildCategoryItem({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(categoryModel.image))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            categoryModel.title,
            style: AppStyles.textStyle16White400,
          )
        ],
      ),
    );
  }
}
