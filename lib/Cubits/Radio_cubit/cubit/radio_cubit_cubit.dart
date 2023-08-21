import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radio_cubit_state.dart';

class RadioCubitCubit extends Cubit<RadioCubitState> {
  RadioCubitCubit() : super(RadioCubitInitial());



   String selectedOption="option1", value="option1";

   change(value){
    selectedOption=value;
    emit(RadioCubitInitial());
   }





}
