import 'package:flutter/material.dart';

class HomeLog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeLogState();
  }
}

class HomeLogState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: 

      Padding(
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
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),
                decoration: InputDecoration(
                    hintText: "User Id", prefixIcon: Icon(Icons.person,size: 35,),),
              ),
            ),
            TextFormField(
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password", prefixIcon: Icon(Icons.lock,size: 35,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Colors.blueGrey[100],
                child: Text("LOGIN"),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: FlatButton(
                child: Text("Register New Account"),
                textColor: Colors.teal[300],
                onPressed: () {},
              ),
            ),
          ],
        )),
      ),
    );
  }
}
