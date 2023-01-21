import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/data_recipes.dart';
import 'package:flutter_application_2/data/HP.dart';
import 'package:flutter_application_2/pages/page_home.dart';

class Pagehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Daftar HP Android 5G',
              style: TextStyle(fontFamily: "Poppins")),
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
