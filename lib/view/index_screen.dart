import 'dart:ui';

import 'package:card_creator/dao/data_dao.dart';
import 'package:card_creator/view/form_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexApp extends StatefulWidget {
  static final String routeName = '/index';

  @override
  State createState() {
    return _IndexAppState();
  }
}

class _IndexAppState extends State {
  @override
  Widget build(BuildContext context) {
    print(DataDao.cards);
    return Scaffold(
      appBar: AppBar(
        title: Text('Card List'),
      ),
      body: Container(
        color: Color(0xffe3f2fd),
        child: ListView.builder(
          itemCount: DataDao.cards.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5),
              child: Material(
                  textStyle: TextStyle(fontSize: 30, color: Colors.black),
                  elevation: 20,
                  borderRadius: BorderRadius.circular(10),
                  shadowColor: Colors.black,
                  color: Color(0xff2962ff),
                  child: Container(
                    height: 210,
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/user.png',
                          width: 160,
                          height: 210,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                DataDao.cards[index].name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(DataDao.cards[index].age.toString()),
                              Text(DataDao.cards[index].gender),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            );
          },
          padding: EdgeInsets.all(15),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, FormCard.routeName);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}
