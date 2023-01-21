import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Pageabout());
}

class Pageabout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Flutter',
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/background.jpg'),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.black26)),
                  child: Center(
                    child: Column(children: const [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Welcome To My App',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 40,
                            fontFamily: "Poppins"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/profil.jpeg'),
                      ),
                      Text(
                        'Dicky Nurrahman',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontFamily: "Caveat-VariableFont_wght"),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '43A87006190267',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontFamily: "Caveat-VariableFont_wght"),
                      ),
                      Text(
                        'S1/TI/7/K/P',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontFamily: "Caveat-VariableFont_wght"),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
