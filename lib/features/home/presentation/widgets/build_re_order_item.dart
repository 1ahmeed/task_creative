
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../generated/l10n.dart';
import '../../models/re_order_model.dart';

class BuildReOrderItem extends StatelessWidget {
  const BuildReOrderItem({super.key, required this.reOrderModel});

  final ReOrderModel reOrderModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.lemon,
          )
      ),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Center(child: Image.asset(reOrderModel.image,width: 30,height: 30,)),
                const SizedBox(width: 10,),
                Text(reOrderModel.title,style: AppStyles.textStyle14BlackO400,)
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 40,),
                Text(reOrderModel.subTitle,style: AppStyles.textStyle14Grey400.copyWith(
                    color: AppColors.greyO2
                ),),
              ],
            ),
            const SizedBox(height: 12,),
            GestureDetector(
              onTap: (){
                // print("object");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(child: SvgPicture.asset(AppAssets.iconsIconReload)),
                  const SizedBox(width: 7,),
                  Text(S.of(context).reOrder,style: AppStyles.textStyle12Teal400,)
                ],
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
