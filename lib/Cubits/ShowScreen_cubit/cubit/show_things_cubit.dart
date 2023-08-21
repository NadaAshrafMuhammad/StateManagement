import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_things_state.dart';

class ShowThingsCubit extends Cubit<ShowThingsState> {
  ShowThingsCubit() : super(ShowThingsInitial());


  ShowCircle1(){
    emit(ShowCircle());
  }
  ShowImage1(){
    emit(ShowImage());
  }
  ShowText1(){
    emit(ShowText());
  }
  ShowReset1(){
    emit(ShowThingsInitial());
  }




}
