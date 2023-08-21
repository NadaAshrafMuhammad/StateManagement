import 'package:flutter/material.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

bool text = false, circle = false, cubitImage = false, reset = true;

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(reset)
            Text("No button choosed"),
            if (text)
              Text(
                'We Are ITI',
                style: TextStyle(fontSize: 30),
              ),
            SizedBox(
              height: 30,
            ),
            if(cubitImage)
            SizedBox(
                width: 150,
                height: 150,
                child: Image.network(
                    "https://pub.dev/packages/flutter_bloc/versions/8.1.3/gen-res/gen/logo.webp")),

                    SizedBox(height: 30,),
            if(circle)        
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    text = true;
                    cubitImage=false;
                    circle=false;
                    reset=false;
                  });
                },
                child: Text('Show Text')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    cubitImage = true;
                    text = false;
                  
                    circle=false;
                    reset=false;
                  });
                },
                child: Text('Show Cubit Image')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    circle = true;
                    text = false;
                    cubitImage=false;
                   
                    reset=false;
                  });
                },
                child: Text('Show Red Circle')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    reset = true;
                    text = false;
                    cubitImage=false;
                    circle=false;
                    
                  });
                },
                child: Text('Reset')),
          ],
        ),
      ),
    );
  }
}
