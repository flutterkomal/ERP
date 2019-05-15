import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController userNameEdvController = new TextEditingController();
  TextEditingController pwdEdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        child: Image.asset('assets/meeting.png'),
        backgroundColor: Colors.transparent,
        radius: 100,
      ),
    );


    final userNameEd = TextFormField(
      controller: userNameEdvController,
      decoration: InputDecoration(
        hintText: 'Enter UserName',
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );


    final pwdEd = TextFormField(
      controller: pwdEdController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter Passowrd',
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );


    final loginBtn = RaisedButton(
      child: Text("Login"),
      color: Colors.green,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () {
        if ((userNameEdvController.text != "") ||
            (pwdEdController.text != "")) {
          if ((userNameEdvController.text) != (pwdEdController.text)) {
            showDialog(
                context: context,
                builder: (_) =>
                    AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      contentPadding: EdgeInsets.all(0.0),
                    )
            );
          }
          else {
            Navigator.pushNamed(context, '/dashboard');
          }
        }
      },
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
            pwdEd,
            SizedBox(height: 24.0),
            loginBtn,
          ],

        ),

      ),
    );
  }

}
