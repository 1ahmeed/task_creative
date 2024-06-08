
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:task_creative/core/local_data.dart';

import 'features/home/data/cubit/local_cubit.dart';
import 'features/home/presentation/home_screen.dart';

import 'generated/l10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.init();
   bool? isArabic = CacheData.getData(key: "isArabic");
   runApp( MyApp(isArabic: isArabic,));

}

class MyApp extends StatelessWidget {
   const MyApp({super.key,  this.isArabic});

   final bool? isArabic;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalCubit()..changeLang(fromShared: isArabic),
      child: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale:  LocalCubit.get(context)!.isArabic
                ? const Locale("en")
                : const Locale("ar"),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}

