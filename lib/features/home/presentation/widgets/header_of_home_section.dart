import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../generated/l10n.dart';
import '../../data/cubit/local_cubit.dart';

class HeaderOfHomeSection extends StatelessWidget {
  const HeaderOfHomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalCubit, LocalState>(
      builder: (context, state) {
        return Row(children: [
          const SizedBox(
            width: 10,
          ),
          Center(
            child: SvgPicture.asset(AppAssets.iconsLocation),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            S.of(context).tantaStadArea,
            style: AppStyles.textStyle14BlackO400,
          ),
          const Spacer(),
          IconButton(onPressed: (){
            LocalCubit.get(context)!.changeLang();
          }, icon:  const Icon(Icons.language)),
          TextButton(
              onPressed: () {},
              child: Text(
                S.of(context).change,
                style: AppStyles.textStyle14BlackO400
                    .copyWith(decoration: TextDecoration.underline),
              ))
        ]);
      },
    );
  }
}
