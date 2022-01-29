import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opendayscuola/HOME_PAG.dart';

void main() => runApp(MioApp());

class MioApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Scuola',
      debugShowCheckedModeBanner: false,
      // Set Raleway as the default app font
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),

      home:HomePagina(),
    );
  }
}
