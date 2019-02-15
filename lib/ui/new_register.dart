import 'package:flutter/material.dart';
import './login_UI.dart';

class NewRegis extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewRegisState();
  }
}

class NewRegisState extends State<StatefulWidget> {
  final email = TextEditingController();
  final pass = TextEditingController();
  final re_pass = TextEditingController();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(centerTitle: true, title: Text('REGISTER')),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 17, right: 17),
        child: Center(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  controller: email,
                  style: TextStyle(color: Colors.blue,fontSize: 15),
                  decoration: InputDecoration(
                      hintText: 'Email', prefixIcon: Icon(Icons.email,color: Colors.blue,)
                      ,hintStyle: TextStyle(color: Colors.blue,fontSize: 15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  controller: pass,
                  style: TextStyle(color: Colors.blue,fontSize: 15),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      hintStyle: TextStyle(color: Colors.blue,fontSize: 15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: re_pass,
                  style: TextStyle(color: Colors.blue,fontSize: 15),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Re-Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      hintStyle: TextStyle(color: Colors.blue,fontSize: 15)),
                ),
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("CONTINUE"),
                onPressed: () {
                  if (email.text.isEmpty || pass.text.isEmpty || re_pass.text.isEmpty) {
                    final snackbar = SnackBar(
                      content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"),
                    );
                    _scaffoldkey.currentState.showSnackBar(snackbar);
                  } else if(email.text == 'admin'){
                    final snackbar = SnackBar(
                      content: Text("user นี้มีอยู่ในระบบแล้ว"),
                    );
                    _scaffoldkey.currentState.showSnackBar(snackbar);
                  }
                  else {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLog()));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
