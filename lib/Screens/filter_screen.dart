import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  Color buttonColor1 = Color.fromARGB(255, 207, 207, 207);
  Color buttonColor2 = Color.fromARGB(255, 207, 207, 207);
  Color buttonColor3 = Color.fromARGB(255, 207, 207, 207);
  Color buttonColor4 = Color.fromARGB(255, 207, 207, 207);
  Color buttonColor5 = Color.fromARGB(255, 207, 207, 207);
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
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonColor1 = Colors.blue;
                          buttonColor2 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor3 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor4 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor5 = Color.fromARGB(255, 207, 207, 207);
                        });
                      },
                      child: Text(
                        "قيد التنفيذ",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: buttonColor1,
                      )),
                  SizedBox(
                    width: 18,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonColor2 = Colors.blue;
                          buttonColor1 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor3 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor4 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor5 = Color.fromARGB(255, 207, 207, 207);
                        });
                      },
                      child: Text(
                        "الملغية",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: buttonColor2,
                      )),
                  SizedBox(
                    width: 18,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonColor1 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor2 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor3 = Colors.blue;
                          buttonColor4 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor5 = Color.fromARGB(255, 207, 207, 207);
                        });
                      },
                      child: Text(
                        "المكتملة",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: buttonColor3)),
                  SizedBox(
                    width: 18,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonColor1 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor2 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor3 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor4 = Colors.blue;
                          buttonColor5 = Color.fromARGB(255, 207, 207, 207);
                        });
                      },
                      child: Text(
                        "تحت المراجعة",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: buttonColor4)),
                  SizedBox(
                    width: 18,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonColor1 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor2 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor3 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor4 = Color.fromARGB(255, 207, 207, 207);
                          buttonColor5 = Colors.blue;
                        });
                      },
                      child: Text(
                        "تمت",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: buttonColor5)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
