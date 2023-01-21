import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/data_recipes.dart';
import 'package:flutter_application_2/data/HP.dart';
import 'package:flutter_application_2/pages/page_about.dart';
import 'package:flutter_application_2/pages/page_home.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Daftar HP Android 5G',
              style: TextStyle(fontFamily: "Poppins")),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 150,
                  color: Colors.indigo,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Pagehome(),
                    ),
                  );
                },
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Pageabout(),
                    ),
                  );
                },
                leading: Icon(Icons.person),
                title: Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: dataHP.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                reseps: dataHP[index],
                              )));
                },
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            dataHP[index].image,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dataHP[index].name,
                              style: TextStyle(
                                  fontFamily: "Caveat-VariableFont_wght",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.indigo)),
                          Text('Harga Terkini : ${dataHP[index].htm}'),
                          ClipOval(
                            child: Material(
                              color: Colors.red, // button color
                              child: InkWell(
                                splashColor: Colors.white, // inkwell color
                                child: SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Icon(Icons.favorite)),
                                onTap: () {},
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
