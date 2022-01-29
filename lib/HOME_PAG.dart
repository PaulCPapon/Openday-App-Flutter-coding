import 'package:opendayscuola/DATI_PAG.dart';
import 'package:opendayscuola/OPENDAY_PAG.dart';
import 'package:opendayscuola/LOGIN_PAG.dart';
import 'package:opendayscuola/CHISIAMO_PAG.dart';
import 'package:opendayscuola/CLASSI_PAG.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePagina extends StatefulWidget {
  @override
  _HomePagina createState() => new _HomePagina();
}

const TextStyle textStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'OpenSans',
);

class _HomePagina extends State<HomePagina>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  Scuola artist;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 2000),
      vsync: this,
    );

    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  final background = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/ciao.jpg'),
        fit: BoxFit.cover,),
    ),
  );

  final DarkOpacity = Container(
    color: Colors.black.withOpacity(0.5),
  );

  Widget button(String label, Function onTap) {

    final Scuola ITIVE3 = Scuola(
      Nome: 'ITI VITTORIO EMANUELE III',
      avatar: 'assets/MIUR.jpg',
      backdropPhoto: 'assets/ciao.jpg',
      location: 'Via Duca della Verdura 48, Palermo,Italia',
      descri_zione:
      'Qui potete vedere tutte le informazioni di tutti i Classi e i nomi dei Alunni ',
      classi: <classe>[
        classe(
          titolo: '5° APPREDISTATO',
          foto: 'assets/pic.JPG',
          link: 'http://itiveiii5app.altervista.org/Sito5app/Home.html',
        ),
        classe(
          titolo: '5° A',
          foto: 'assets/pic1.png',
          link: 'http://itiveiii5app.altervista.org/Sito5app/Home.html',
        ),
        classe(
          titolo: '5° B',
          foto: 'assets/5 b.png',
          link: 'http://itiveiii5app.altervista.org/Sito5app/Home.html',
        ),
        classe(
          titolo: '4° A',
          foto: 'assets/4 a.png',
          link: 'http://itiveiii5app.altervista.org/Sito5app/Home.html',
        ),
        classe(
          titolo: '3° A',
          foto: 'assets/3 a.png',
          link: 'http://itiveiii5app.altervista.org/Sito5app/Home.html',
        ),
        classe(
          titolo: '2° A',
          foto: 'assets/2 a.png',
          link: 'http://itiveiii5app.altervista.org/Sito5app/Home.html',
        ),
        classe(
          titolo: '1° A',
          foto: 'assets/1 a.png',
          link: 'http://itiveiii5app.altervista.org/Sito5app/Home.html',
        ),
      ],
    );


    return new FadeTransition(
      opacity: animation,
      child: new SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, -0.6), end: Offset.zero)
            .animate(controller),
        child: Material(
          color: Color(0xBB00D699),
          borderRadius: BorderRadius.circular(30.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ScuolaDettaglio(ITIVE3),
              ));
            },
            splashColor: Colors.white24,
            highlightColor: Colors.white10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Center(
                child: Text(
                  label,
                  style: textStyle.copyWith(fontSize: 18.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget button1(String label, Function onTap) {
    return new FadeTransition(
      opacity: animation,
      child: new SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, -0.6), end: Offset.zero)
            .animate(controller),
        child: Material(
          color: Color(0xBB00D699),
          borderRadius: BorderRadius.circular(30.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>LoginPage(),
              ));
            },
            splashColor: Colors.white24,
            highlightColor: Colors.white10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Center(
                child: Text(
                  label,
                  style: textStyle.copyWith(fontSize: 18.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }



  Widget button2(String label, Function onTap) {
    final Scuola ITIVE3 = Scuola(
      Nome: 'ITI VITTORIO EMANUELE III',
      avatar: 'assets/MIUR.jpg',
      backdropPhoto: 'assets/ciao.jpg',
      location: 'Via Duca della Verdura 48, Palermo,Italia',
      descri_zione:
      "Il 3 Marzo 1887 nasce a Palermo una scuola artistico-industriale,"
          " che nel 1908 diventa Regia Scuola Superiore di arte applicata"
          " all'industria. negli anni venti la scuola si trasforma in Istituto"
          " industriale di II grado e viene intitolata a Re Vittorio Emanuele "
          "III. Nel 1933 viene istituita la sezione Radiotecnici e nel 34 si "
          "hanno i primi diplomati nelle due specializzazioni: meccanici ed "
          "elettricisti. L'Istituto, in coerenza con la sua tradizione di "
          "serietà ed efficienza, continua ancora oggi ad operare nella realtà"
          " siciliana, promuovendo innovazioni didattiche, aggiornandosi sulle"
          " nuove scienze e tecnologie, in collegamento con il territorio, "
          "l'università e il mondo del lavoro.",
    );

    return new FadeTransition(
      opacity: animation,
      child: new SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, -0.6), end: Offset.zero)
            .animate(controller),
        child: Material(
          color: Color(0xBB00D699),
          borderRadius: BorderRadius.circular(30.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>ScuolaDetailsPage(ITIVE3),
              ));
            },
            splashColor: Colors.white24,
            highlightColor: Colors.white10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Center(
                child: Text(
                  label,
                  style: textStyle.copyWith(fontSize: 18.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }




  Widget

  button3(String label, Function onTap) {
    return new FadeTransition(
      opacity: animation,
      child: new SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, -0.6), end: Offset.zero)
            .animate(controller),
        child: Material(
          color: Color(0xBB00D699),
          borderRadius: BorderRadius.circular(30.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>Openday(),
              ));
            },
            splashColor: Colors.white24,
            highlightColor: Colors.white10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Center(
                child: Text(
                  label,
                  style: textStyle.copyWith(fontSize: 18.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }





  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final logo = new ScaleTransition(
      scale: animation,
      child: Image.asset(
        'assets/logo.png',
        width: 180.0,
        height: 180.0,
      ),
    );

    final description = new FadeTransition(
      opacity: animation,
      child: new SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, -0.8), end: Offset.zero)
            .animate(controller),
        child: Text(
          "ITI VITTORIO EMANUELE III" '\n' "Benvenuto nell'App della Scuola",
          textAlign: TextAlign.center,
          style: textStyle.copyWith(fontSize: 24.0),
        ),
      ),
    );


    final signWith = new FadeTransition(
      opacity: animation,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Entra con',
            style: textStyle,
          ),
          GestureDetector(

            onTap: () {
              print('google');
            },
            child: Text(
              ' Google',
              style: textStyle.copyWith(
                  color: Color(0xBB009388),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ),
          Text(' or', style: textStyle),
          GestureDetector(
            onTap: () {
              print('Facebook');
            },
            child: Text(
              ' Facebook',
              style: textStyle.copyWith(
                  color: Color(0xBB009388),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          background,
          DarkOpacity,
          new SafeArea(
            child: new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  logo,
                  SizedBox(height: 30.0),
                  description,
                  SizedBox(height: 60.0),
                  button1('Accedi', () {
                  }),
                  SizedBox(height: 8.0),
                  button2('Chi Siamo', () {
                  }),
                  SizedBox(height: 8.0),
                  button('Classi', () {
                  }),
                  SizedBox(height: 8.0),
                  button3('Open Day', () {
                  }),
                  SizedBox(height: 8.0),
                  signWith
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





