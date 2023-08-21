import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubits/Radio_cubit/cubit/radio_cubit_cubit.dart';

class RadioScreenByCubit extends StatelessWidget {
  const RadioScreenByCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Example'),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<RadioCubitCubit, RadioCubitState>(
          builder: (context, state) {
            return Column(
              children: [
                SafeArea(
                    child: RadioListTile(
                        title: Text('Option 1'),
                        value: 'option1',
                        groupValue:
                            context.read<RadioCubitCubit>().selectedOption,
                        onChanged: (value) {
                          context.read<RadioCubitCubit>().change(value);
                        })),
                for (int i = 0; i < 19; i++)
                  RadioListTile(
                      title: Text('Option ${i + 2}'),
                      value: 'option${i + 2}',
                      groupValue:
                          context.read<RadioCubitCubit>().selectedOption,
                      onChanged: (value) {
                        context.read<RadioCubitCubit>().change(value);
                      }),
              ],
            );
          },
        ),
      ),
    );
  }
}
