import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordInitial());


   bool secure= false;
   
   ontap(){
    emit(PasswordInitial());
   }




}
