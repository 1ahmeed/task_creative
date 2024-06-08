
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_creative/core/utils/app_colors.dart';
import 'package:task_creative/features/home/models/may_like_model.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';

class BuildMayLikeItem extends StatelessWidget {
  const BuildMayLikeItem({super.key, required this.mayLikeModel});

  final MayLikeModel mayLikeModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.lemon,
            )
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(mayLikeModel.imageOfMeal,fit: BoxFit.cover,),
                Positioned(
                  top: 50,
                  left: 5,
                  child: InkWell(
                    onTap: (){},
                    child: CircleAvatar(
                      backgroundColor:AppColors.white ,
                      radius: 16,
                      child: SvgPicture.asset(AppAssets.iconsCart),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,bottom: 8),
              child: Text(mayLikeModel.nameOfMeal,style: AppStyles.textStyle15BlackO400,),
            ),
            Row(
              children: [
                const SizedBox(width: 8,),
                Text(mayLikeModel.newPrice,style:
                AppStyles.textStyle14Orange400),
                const SizedBox(width: 10,),
                Text(mayLikeModel.oldPrice,style: AppStyles.textStyle14Grey400.copyWith(
                    color: AppColors.greyO2,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColors.greyO2
                )),
              ],
            ),
            const SizedBox(height: 9,),
            Row(
              children: [
                const SizedBox(width: 8,),
                CircleAvatar(
                  backgroundImage: AssetImage(mayLikeModel.imageOfRestaurant),

                ),
                const SizedBox(width: 8,),
                Text(mayLikeModel.nameOfRestaurant,style: AppStyles.textStyle12Grey400.copyWith(
                    color: AppColors.grey
                ),),



              ],
            )

          ],
        ) ,
      ),
    );
  }
}