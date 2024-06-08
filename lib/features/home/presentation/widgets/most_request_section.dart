
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_creative/core/utils/assets.dart';
import 'package:task_creative/features/home/models/most_request_model.dart';

import '../../../../core/constant.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../generated/l10n.dart';
import 'build_most_request_item.dart';

class MostRequestSection extends StatelessWidget {
  const MostRequestSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final List<MostRequestModel> mostRequest = [
      MostRequestModel(
          image: AppAssets.imageCookDoor,
          title: S.of(context).cookDoor,
          type: S.of(context).burger,
          typeDetails:S.of(context).friedChicken
      ),
      MostRequestModel(
          image: AppAssets.imageCookDoor,
          title: S.of(context).sceptraCafe,
          type: S.of(context).burger,
          typeDetails:S.of(context).friedChicken
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
          Row(
            children: [
              Text(
                S.of(context).mostRequest,
                style: AppStyles.textStyle21Black400,
              ),
              const Spacer(),
              TextButton(onPressed: (){},
                  child: Row(
                    children: [
                      Text(S.of(context).all,style: AppStyles.textStyle16Teal400,),
                      RotatedBox(
                          quarterTurns:AppConstant.checkArabic()?0: 2,
                          child: SvgPicture.asset(AppAssets.iconsArrowBack))
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => BuildMostRequestItem(
                  mostRequestModel: mostRequest[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: mostRequest.length),
          )
        ],
      ),
    );
  }
}
