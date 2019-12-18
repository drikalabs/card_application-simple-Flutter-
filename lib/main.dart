import 'package:card_creator/view/form_screen.dart';
import 'package:card_creator/view/index_screen.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Card Builder',
    initialRoute: IndexApp.routeName,
    routes: {
      IndexApp.routeName:(context)=>IndexApp(),
      FormCard.routeName:(context)=>FormCard(),
    },
  ));
}