import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = '/login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          children: [
            Center(
              child: Container(
                width: screenSize.width,
                padding: EdgeInsets.only(
                    top: screenSize.height * 0.10,
                    left: screenSize.width * 0.20,
                    bottom: screenSize.height * 0.05,
                    right: screenSize.width * 0.20),
                child: Text("Bienvenue dans Apple Products",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 2),
                width: screenSize.width * 0.8,
                decoration: BoxDecoration(
                    color: Color(0XFFE5E5E5),
                    borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0x00000000))),
                      hintText: 'Email',
                      labelText: 'Adresse mail',
                      icon: Icon(
                        Icons.email_outlined,
                        size: 30,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 13),
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 2),
                width: screenSize.width * 0.8,
                decoration: BoxDecoration(
                    color: Color(0XFFE5E5E5),
                    borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0x00000000))),
                      hintText: 'Mot de passe',
                      labelText: 'Mot de passe',
                      icon: Icon(
                        Icons.lock,
                        size: 30,
                      )),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: screenSize.width * 0.06),
                  width: screenSize.width * 0.5,
                  child: Text('Mot de passe oublie',
                      style: TextStyle(fontSize: 18, color: Colors.blue)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Connexion',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(child: Text('Se connecter avec')),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.07),
                                offset: Offset(
                                  1.5,
                                  5,
                                ),
                                blurRadius: 3),
                            BoxShadow(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                offset: Offset(1.5, -5),
                                blurRadius: 2),
                            BoxShadow(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                offset: Offset(-1.5, -5),
                                blurRadius: 3),
                          ],
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/google.png')))),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.07),
                                offset: Offset(
                                  1.5,
                                  5,
                                ),
                                blurRadius: 3),
                            BoxShadow(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                offset: Offset(1.5, -5),
                                blurRadius: 2),
                            BoxShadow(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                offset: Offset(-1.5, -5),
                                blurRadius: 3),
                          ],
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/icons/apple.png')))),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.07),
                                offset: Offset(
                                  1.5,
                                  5,
                                ),
                                blurRadius: 3),
                            BoxShadow(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                offset: Offset(1.5, -5),
                                blurRadius: 2),
                            BoxShadow(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                offset: Offset(-1.5, -5),
                                blurRadius: 3),
                          ],
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/facebook.png')))),
                      )
                    ],
                  )),
            ],
          ),
        )
      ],
    )));
  }
}
