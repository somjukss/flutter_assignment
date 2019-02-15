import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/home_page.dart';
import './new_register.dart';

class HomeLog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeLogState();
  }
}

class HomeLogState extends State<StatefulWidget> {
  final user = TextEditingController();
  final pass = TextEditingController();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldkey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Center(
            child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 20),
              child: Image.asset(
                'photo/log.jpg',
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: TextFormField(
                controller: user,
                style: TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                  hintText: "User Id",
                  prefixIcon: Icon(
                    Icons.person,
                    size: 35,
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: pass,
              style: TextStyle(fontSize: 20, color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 35,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Colors.blueGrey[100],
                child: Text("LOGIN"),
                onPressed: () {
                  if (user.text.isEmpty || pass.text.isEmpty) {
                    final snackbar = SnackBar(
                      content: Text("กรุณาระบุ user or password"),
                    );
                    _scaffoldkey.currentState.showSnackBar(snackbar);
                  } else if (user.text == 'admin' && pass.text == 'admin'){
                    final snackbar = SnackBar(
                      content: Text("user or password ไม่ถูกต้อง"),
                    );
                    _scaffoldkey.currentState.showSnackBar(snackbar);
                  } else {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: FlatButton(
                child: Text("Register New Account"),
                textColor: Colors.teal[300],
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewRegis()));
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
