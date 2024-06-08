import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_creative/core/local_data.dart';

part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  LocalCubit() : super(LocalInitial());
  static   LocalCubit? get(context) => BlocProvider.of(context);

  bool isArabic=false;
  void changeLang({bool? fromShared}){
    if(fromShared != null){
      isArabic =fromShared;
      emit(ChangeLangSuccessState());
    }else {
      isArabic =  !isArabic;
    }
    CacheData.insertIntoCache(key: "isArabic", value: isArabic).
    then((value) {
      emit(ChangeLangErrorState ());

    });
  }
}
