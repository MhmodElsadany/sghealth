import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sh_health/theme/text_styles.dart';
import 'package:sh_health/widgets/FadeAnimation.dart';
import 'package:sh_health/theme/extention.dart';


class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({Key key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[

                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 80,
                        width: MediaQuery.of(context).size.width,
                        child: FadeAnimation(1.6, Container(

                          margin: EdgeInsets.only(),
                          child: Center(
                          child:  Text(
                              "Dash Board",
                              style: TextStyles.title.white,
                            )),

                          ),
                        )),
                      Positioned(
                        top:40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            BackButton(
                                color: Colors.white,
                                onPressed: () => Navigator.of(context).pop()),
                            Container()
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }



}