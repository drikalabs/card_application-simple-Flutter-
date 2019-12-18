import 'package:card_creator/constanta/enumeration.dart';
import 'package:card_creator/dao/data_dao.dart';
import 'package:card_creator/model/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormCard extends StatefulWidget {
  static final String routeName = '/form';

  @override
  State createState() {
    return _FormState();
  }
}

class _FormState extends State {
  IdCard idCard;
  Gender _gender;

  @override
  void initState() {
    idCard = IdCard('', null, null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Form'),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            TextField(
              decoration:
                  InputDecoration(hintText: 'insert name', labelText: 'Name'),
              onChanged: (name) {
                idCard.name = name;
              },
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'insert age',
                labelText: 'Age',
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                WhitelistingTextInputFormatter.digitsOnly,
              ],
              onChanged: (ages) {
                idCard.age = int.parse(ages);
              },
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: 'insert gender', labelText: 'Name'),
              onChanged: (gen) {
                idCard.gender = gen;
              },
            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                new Radio(
//                  value: Gender.MALE,
//                  groupValue: _gender,
//                  onChanged: (value){idCard.gender=value;},
//                ),
//                new Text(
//                  'Male',
//                  style: new TextStyle(fontSize: 16.0),
//                ),
//                new Radio(
//                  value: Gender.FEMALE,
//
//                  groupValue: _gender,
//                  onChanged: (value){idCard.gender=value;},
//                ),
//                new Text(
//                  'Female',
//                  style: new TextStyle(
//                    fontSize: 16.0,
//                  ),
//                ),
//              ],
//            ),
//            TextField(
//              decoration: InputDecoration(
//                  hintText: 'insert Gender', labelText: 'Gender'),
//              onChanged: (type) {
//                idCard.gender = type;
//              },
//            ),
            RaisedButton(
              onPressed: () {
                DataDao.cards.add(idCard);
                Navigator.pop(context);
              },
              child: Text('Submit'),
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
