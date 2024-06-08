part of 'local_cubit.dart';

abstract class LocalState {}

class LocalInitial extends LocalState {}

class ChangeLangSuccessState extends LocalState {}
class ChangeLangErrorState extends LocalState {}
