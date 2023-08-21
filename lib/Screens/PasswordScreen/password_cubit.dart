import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement/Cubits/password_by_cubit/cubit/password_cubit.dart';

class PasswordByCubit extends StatelessWidget {
  PasswordByCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 204, 191),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<PasswordCubit, PasswordState>(
            builder: (context, state) {
              return TextField(
                obscureText: context.read<PasswordCubit>().secure,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          context.read<PasswordCubit>().secure =
                              !context.read<PasswordCubit>().secure;
                              context.read<PasswordCubit>().ontap();
                        },
                        icon: Icon(context.read<PasswordCubit>().secure
                            ? Icons.visibility_off
                            : Icons.visibility)),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  hintText: "Enter Your Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  filled: true,
                  fillColor: Colors.white,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
