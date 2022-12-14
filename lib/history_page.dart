import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "All your rent's history",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                child: Material(
                    color: Colors.deepPurple,
                    elevation: 8,
                    child: InkWell(
                        splashColor: Colors.black26,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Ink.image(
                            image: AssetImage("assets/rav4.jpg"),
                            height: 200,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Toyota Rav 4',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              )),
                          Text('Owner: 41',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 216, 216, 216),
                              )),
                        ]))),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                child: Material(
                    color: Colors.deepPurple,
                    elevation: 8,
                    child: InkWell(
                        splashColor: Colors.black26,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Ink.image(
                            image: AssetImage("assets/mustang.jpg"),
                            height: 200,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Ford Mustang',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              )),
                          Text('Owner: 121414',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 216, 216, 216),
                              )),
                        ]))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
