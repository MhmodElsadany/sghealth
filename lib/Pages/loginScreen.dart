import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sh_health/Models/userModel.dart';
import 'package:sh_health/Pages/dashBoardScreen.dart';
import 'package:sh_health/theme/theme.dart';
import 'package:sh_health/widgets/FadeAnimation.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  User user= User();
  String userName="";
  String pass="";
  @override
  Widget build(BuildContext context) {
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
                              child: Image.asset("assets/logo.png", color: Colors.white,fit: BoxFit.contain,width: 200,),

                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(
                                      color: Colors.grey[100]))
                              ),
                              child: TextField(
                                  onChanged: (text) {
                                    setState(() {
                                      userName=text;
                                    });
                                  },
                                decoration: InputDecoration(

                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                        color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                onChanged: (text) {
                                  setState(() {
                                    pass=text;
                                  });
                                  print(pass);
                                },

                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2, Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ]
                            )
                        ),
                        child: InkWell(
                          child: Center(
                            child: Text("Login", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                          ),
                          onTap: (){
                            print(userName);
                            print("rrrr");

                            if (userName=="admin" && pass=="admin"){
                              Navigator.push(context, MaterialPageRoute(builder: (_) => DashBoardScreen()));

                              Toast.show("successfully registered", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

                                   }else{
                                     Toast.show("invalid in username or password", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

                                   }
                                       },
                        ),
                      )),
                      SizedBox(height: 70,),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );

  }


}