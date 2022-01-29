import 'package:flutter/material.dart';

class Openday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
            children: <Widget>[
              new Image.asset(
                'assets/LOGO-SCUOLA-APERTA.jpg',
                width: 350.0,
                height: 150.0,
              ),

              new Text(
                "Benvenuto nella sezione Open Day di ITI Vittorio Emanuele III. Gli alunni delle scuole medie ed i loro genitori possono visitare il nostro "
                    "istituto nell'ambito delle giornate di OPEN DAY. Durante queste giornate i docenti del gruppo ORIENTAMENTO 1) Presenteranno la nostra offerta formativa."
                    " 2) Vi accompagneranno in una vista ai locali, aule, laboratori e palestre. 3) forniranno approfondimenti sulle articolazioni di studi"
                    " (Informatica, Elettrotecnica, Meccanica e Meccatronica), sui quadri orari, sui programmi e le attività svolte, sui progetti dell'Istituto."
                    "L'Istituto verrà aperto al pubblico secondo il seguente calendario: Sabato 15 DICEMBRE 2018 dalle ore 8.30 alle ore 11.30. Sabato 12 GENNAIO "
                    "2019  dalle ore 8.30 alle ore 11.30. Sabato 19 GENNAIO 2019  dalle ore 8.30 alle ore 11.30. Sabato 26 GENNAIO 2019  dalle ore 8.30 alle ore 11.30. ",
                style: new TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),

            ]
        ),

      ),

      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.border_all), title: new Text("Classi")),
        new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text("Home")),
        new BottomNavigationBarItem(icon: new Icon(Icons.library_books), title: new Text("Laboratori"))
      ], onTap: (int i) => debugPrint("Hey Touched $i"),),

    );
  }

}
