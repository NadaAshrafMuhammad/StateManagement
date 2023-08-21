import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement/Cubits/ShowScreen_cubit/cubit/show_things_cubit.dart';

class ShowScreenByCubit extends StatelessWidget {
  const ShowScreenByCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             BlocBuilder<ShowThingsCubit, ShowThingsState>(
              builder: (context, state) {
                if (state is ShowText) {
                  return Text(
                    'We Are ITI',
                    style: TextStyle(fontSize: 30),
                  );
                } else if (state is ShowImage) {
                  return SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://pub.dev/packages/flutter_bloc/versions/8.1.3/gen-res/gen/logo.webp"));
                } else if (state is ShowCircle) {
                  return Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  );
                } else{
                  return Text("No button Choosed");}
                  
                  
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<ShowThingsCubit>().ShowText1();
                },
                child: Text('Show Text')),
            ElevatedButton(
                onPressed: () {
                  context.read<ShowThingsCubit>().ShowImage1();
                },
                child: Text('Show Cubit Image')),
            ElevatedButton(
                onPressed: () {
                  context.read<ShowThingsCubit>().ShowCircle1();
                },
                child: Text('Show Red Circle')),
            ElevatedButton(
                onPressed: () {
                  context.read<ShowThingsCubit>().ShowReset1();
                },
                child: Text('Reset')),
          ],
        ),
      ),
    );
  }
}
