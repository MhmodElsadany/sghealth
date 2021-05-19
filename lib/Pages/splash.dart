import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sh_health/Pages/loginScreen.dart';
import 'package:sh_health/theme/extention.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/doctor.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .4,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, .6),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: SizedBox(),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Image.asset("assets/logo.png", color: Colors.white,fit: BoxFit.contain,)),
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
            ],
          ).alignTopCenter,
        ],
      ),
    );
  }
}