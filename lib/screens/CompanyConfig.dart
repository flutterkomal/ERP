
import 'package:erp_flutter/bloc/CompanyBloc.dart';
import 'package:erp_flutter/model/CompanyConfigResponce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class CompanyPage extends StatefulWidget {

  @override
  _CompanyPageState createState() => new _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage>{

  TextEditingController userNameEdvController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child:CircleAvatar(
        child: Image.asset('assets/meeting.png'),
        backgroundColor: Colors.transparent,
        radius: 100,
      ),
    );

    final userNameEd = TextFormField(
      controller: userNameEdvController,
      decoration: InputDecoration(
        hintText: 'Enter Company Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );


    final loginBtn = RaisedButton(
        child: Text("Next"),
        color: Colors.yellow,
        padding: EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {

          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
         // bloc.getUser();

         // Navigator.pushNamed(context, '/company');
        }
    );



    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 100, 20, 0),
        child: Column(
          children: <Widget>[
            logo,
            SizedBox(height: 100.0),
            userNameEd,
            SizedBox(height: 8.0),
            loginBtn,

            /* Text(
                "Forgot Password"
            ),*/

          ],

        ),

      ),
    );
  }


}


