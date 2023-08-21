import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
   PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool secure= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 204, 191),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: secure,

            decoration: InputDecoration(
              
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton
                    (onPressed: () {
                      setState(() {
                        secure=!secure;
                      });
                      
                    },
                      icon:Icon( secure? Icons.visibility_off:Icons.visibility)),
                  ),
                prefixIcon: Icon(Icons.lock),
                labelText: "Password",
                hintText: "Enter Your Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    filled: true,
                     fillColor: Colors.white,
                    ),
                    
        
          ),
        ),
      ),
    );
  }
}
