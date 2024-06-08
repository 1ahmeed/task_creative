
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../generated/l10n.dart';
import '../../models/most_request_model.dart';

class BuildMostRequestItem extends StatelessWidget {
  const BuildMostRequestItem({super.key, required this.mostRequestModel});

  final MostRequestModel mostRequestModel;

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
            Center(child: Image.asset(mostRequestModel.image,)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Text(mostRequestModel.title,style: AppStyles.textStyle15BlackO400,),
            ),
            Row(
              children: [
                const SizedBox(width: 8,),
                Text("${mostRequestModel.type}.",style: AppStyles.textStyle12Grey400.copyWith(
                    color: AppColors.grey
                ),),
                Text(mostRequestModel.typeDetails,style: AppStyles.textStyle12Grey400.copyWith(
                    color: AppColors.grey
                ),),
              ],
            ),
            const SizedBox(height: 9,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 8,),
                  SvgPicture.asset(AppAssets.iconsTime),
                  Text("${S.of(context).p45} .",style: AppStyles.textStyle12Grey400.copyWith(
                      color: AppColors.grey
                  ),),
                 const SizedBox(width: 3,),
                  SvgPicture.asset(AppAssets.iconsDelivery),
                  Text("${S.of(context).p15 } .",style: AppStyles.textStyle12Grey400.copyWith(
                      color: AppColors.grey
                  ),),
                  const SizedBox(width: 3,),
                  SvgPicture.asset(AppAssets.iconsStar),
                  Text("4.5",style: AppStyles.textStyle12Grey400.copyWith(
                      color: AppColors.grey
                  ),),


                ],
              ),
            ),

          ],
        ) ,
      ),
    );
  }
}
