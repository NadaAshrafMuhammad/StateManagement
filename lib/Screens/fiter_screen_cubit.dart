import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubits/filter_cubit/filter_bar_cubit_cubit.dart';

class FilterScreenCubit extends StatelessWidget {
  const FilterScreenCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 230, 223),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: BlocBuilder<FilterBarCubitCubit, FilterBarCubitState>(
                builder: (context, state) {
                 
                  
                  
                              
                  return Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                           context.read<FilterBarCubitCubit>().changeColor1(); 
                           // state is onpressed;
                          },
                          
                          child: Text(
                            "قيد التنفيذ",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: context
                                  .read<FilterBarCubitCubit>()
                                  .realbuttoncolor)),
                      SizedBox(
                        width: 18,
                      ),
                      
                      ElevatedButton(
                          onPressed: () {
                            //context.read<FilterBarCubitCubit>().changeColor();
                            context.read<FilterBarCubitCubit>().changeColor2(); 


                          },
                          child: Text(
                            "الملغية",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: context
                                  .read<FilterBarCubitCubit>()
                                  .realbuttoncolor1)),
                      SizedBox(
                        width: 18,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context.read<FilterBarCubitCubit>().changeColor3(); 
                          },
                          child: Text(
                            "المكتملة",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: context
                                  .read<FilterBarCubitCubit>()
                                  .realbuttoncolor2)),
                      SizedBox(
                        width: 18,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context.read<FilterBarCubitCubit>().changeColor4(); 
                          },
                          child: Text(
                            "تحت المراجعة",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: context
                                  .read<FilterBarCubitCubit>()
                                  .realbuttoncolor3)),
                      SizedBox(
                        width: 18,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context.read<FilterBarCubitCubit>().changeColor5(); 
                          },
                          child: Text(
                            "تمت",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: context
                                  .read<FilterBarCubitCubit>()
                                  .realbuttoncolor4)),
                    ],
                  );
                },
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}
