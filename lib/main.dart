import 'package:flutter/material.dart';
import 'package:state_mangement/Cubits/Radio_cubit/cubit/radio_cubit_cubit.dart';
import 'package:state_mangement/Cubits/ShowScreen_cubit/cubit/show_things_cubit.dart';
import 'package:state_mangement/Cubits/filter_cubit/filter_bar_cubit_cubit.dart';
import 'package:state_mangement/Cubits/password_by_cubit/cubit/password_cubit.dart';
import 'package:state_mangement/Screens/PasswordScreen/password_cubit.dart';
import 'package:state_mangement/Screens/PasswordScreen/password_screen.dart';
import 'package:state_mangement/Screens/Radio/radio_cubit.dart';
import 'package:state_mangement/Screens/ShowWidgets/show_by_cubit.dart';
import 'package:state_mangement/Screens/ShowWidgets/show_screen.dart';
import 'package:state_mangement/Screens/filter_screen.dart';
import 'package:state_mangement/Screens/fiter_screen_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FilterBarCubitCubit>(
          create: (BuildContext context) => FilterBarCubitCubit(),
        ),
        BlocProvider<PasswordCubit>(
          create: (BuildContext context) => PasswordCubit(),
        ),
        BlocProvider<ShowThingsCubit>(
          create: (BuildContext context) => ShowThingsCubit(),
        ),
        BlocProvider<RadioCubitCubit>(
          create: (BuildContext context) => RadioCubitCubit(),
        ),

      ],
      child: MaterialApp(
        home: RadioScreenByCubit(),
      ),
    );
  }
}
