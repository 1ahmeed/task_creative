import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_creative/core/constant.dart';
import 'package:task_creative/core/utils/app_colors.dart';
import 'package:task_creative/core/utils/app_styles.dart';
import 'package:task_creative/core/utils/assets.dart';

import '../../../../generated/l10n.dart';

class SearchSection extends StatelessWidget {
  SearchSection({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: searchController,
              onFieldSubmitted: (value) {
                if (value.isEmpty || value == "") {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorResultWidget(),));
                } else {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ResultSearchScreen(value: value),));
                }
              },
              decoration:  InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: S.of(context).searchMealOrRestaurant,
                hintStyle: AppStyles.textStyle12BlackO400,
                filled: true,
                fillColor: AppColors.whiteO3,
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding:
                    const EdgeInsets.only(top: 12, right: 16, left: 16, bottom: 12),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
            },
            child: Container(
              height: 40,
              // margin: EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: AppColors.whiteO3,
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  Center(child: Badge(
                      backgroundColor:AppColors.orange ,
                     offset:AppConstant.checkArabic()?const Offset(13, -8): const Offset(-13, -8),
                      label: const Text("50",style: AppStyles.textStyle10BlackO400,),
                      child: SvgPicture.asset(AppAssets.iconsCart))),
                  const SizedBox(width: 3),
                  Container(
                    height: 20,
                    width: 1,
                    color: AppColors.lemon,
                  ),
                  const SizedBox(width: 3),
                   Text(S.of(context).p300)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
