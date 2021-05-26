import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_flutter/data/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController userCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Sholat Yogyakarta'),
      ),
      body: ListView(
        children: [
          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Amman_BW_29.JPG/1024px-Amman_BW_29.JPG'),
          TextField(
            controller: userCtrl,
            decoration: InputDecoration(
                labelText: 'Username'
            ),
          ),
          TextField(
            controller: passCtrl,
            decoration: InputDecoration(
                labelText: 'Password'
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
            child: Text('Masuk'),
          )
        ],
      ),
    );
  }
}
