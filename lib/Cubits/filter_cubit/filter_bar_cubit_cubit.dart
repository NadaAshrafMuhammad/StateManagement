import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'filter_bar_cubit_state.dart';

class FilterBarCubitCubit extends Cubit<FilterBarCubitState> {
  FilterBarCubitCubit() : super(FilterBarCubitInitial());

    Color realbuttoncolor = Color.fromARGB(255, 207, 207, 207);
    Color realbuttoncolor1 = Color.fromARGB(255, 207, 207, 207);
    Color realbuttoncolor2 = Color.fromARGB(255, 207, 207, 207);
    Color realbuttoncolor3 = Color.fromARGB(255, 207, 207, 207);
    Color realbuttoncolor4 = Color.fromARGB(255, 207, 207, 207);
    Color changebuttoncolor1 = Colors.red;
    // Color changebuttoncolor2 = Colors.red;
    // Color changebuttoncolor3 = Colors.red;
    // Color changebuttoncolor4 = Colors.red;
    // Color changebuttoncolor5 = Colors.red;

    changeColor1(){
     realbuttoncolor=changebuttoncolor1;
     realbuttoncolor1 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor2 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor3 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor4 = Color.fromARGB(255, 207, 207, 207);
     emit(onpressed());
     
    }
    changeColor2(){
     realbuttoncolor1=changebuttoncolor1;
     realbuttoncolor = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor2 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor3 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor4 = Color.fromARGB(255, 207, 207, 207);
     emit(onpressed());
     
    }
    changeColor3(){
     realbuttoncolor2=changebuttoncolor1;
     realbuttoncolor1 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor3 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor4 = Color.fromARGB(255, 207, 207, 207);
     emit(onpressed());
     
    }
    changeColor4(){
     realbuttoncolor3=changebuttoncolor1;
     realbuttoncolor1 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor2 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor4 = Color.fromARGB(255, 207, 207, 207);
     emit(onpressed());
     
    }
    changeColor5(){
     realbuttoncolor4=changebuttoncolor1;
     realbuttoncolor1 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor2 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor3 = Color.fromARGB(255, 207, 207, 207);
     realbuttoncolor = Color.fromARGB(255, 207, 207, 207);
     emit(onpressed());
     
    }
    


}
