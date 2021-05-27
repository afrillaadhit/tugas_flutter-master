import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_flutter/data/service.dart';
import 'package:tugas_flutter/profil/login.dart';

import 'data/service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => JadwalService(),
        )
      ],
      child: MaterialApp(
        home: Login(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
