import 'package:flutter/material.dart';import 'package:flutter_new_travel_app/widgets.dart';import 'package:font_awesome_flutter/font_awesome_flutter.dart';import 'package:google_fonts/google_fonts.dart';class SignIn extends StatefulWidget {  @override  _SignInState createState() => _SignInState();}class _SignInState extends State<SignIn> {  @override  Widget build(BuildContext context) {    return Scaffold(      body: SingleChildScrollView(        physics: NeverScrollableScrollPhysics(),        child: Stack(          children: [            Container(              height: MediaQuery.of(context).size.height,              width: MediaQuery.of(context).size.width,              decoration: BoxDecoration(                color: Colors.red,                image: DecorationImage(                  image: AssetImage('assets/map.jpg'),                  fit: BoxFit.cover,                )              ),            ),            Container(              width: MediaQuery.of(context).size.width,              height: MediaQuery.of(context).size.height,              decoration: BoxDecoration(                gradient: LinearGradient(                    begin: FractionalOffset.topCenter,                    end: FractionalOffset.bottomCenter,                    colors: [                      Colors.black,                      Colors.black38,                    ],                    stops: [                      0.0,0.10,                    ]                ),              ),            ),            Container(              margin: EdgeInsets.only(top: 30),              child: Column(                mainAxisAlignment: MainAxisAlignment.spaceBetween,                crossAxisAlignment: CrossAxisAlignment.start,                children: [                  Container(                      margin: EdgeInsets.only(left: 10),                      child: Icon(Icons.arrow_back_rounded,color: Colors.white,)),                  Center(                    child: Padding(                      padding: const EdgeInsets.all(5.0),                      child: SizedBox(                        height: 40,                        width: 40,                        child: Image.asset('assets/icon.png'),                      ),                    ),                  ),                  Center(                      child: Text('Track, share and remember all your trips.',                          style: GoogleFonts.b612(                              color: Colors.white,                              fontWeight: FontWeight.w700,                              fontSize: 16,))),                  Container(                    margin: EdgeInsets.only(bottom: 30,top: 40),                    child: Column(                      children: [                        Padding(                          padding: const EdgeInsets.all(10.0),                          child: TextFormField(                            decoration: InputDecoration(                              filled: true,                                fillColor: Colors.white70,                                hintText: 'Enter Email',                                contentPadding: EdgeInsets.only(left: 20, right: 20),                                border: OutlineInputBorder(                                  borderRadius: BorderRadius.circular(25),                                  borderSide: BorderSide(                                    color: Colors.white                                  )                                )),                          ),                        ),                        Padding(                          padding: const EdgeInsets.all(10.0),                          child: TextFormField(                            obscureText: true,                            decoration: InputDecoration(                                filled: true,                                fillColor: Colors.white70,                                hintText: 'Enter Password',                                contentPadding:                                EdgeInsets.only(left: 20, right: 20),                                border: OutlineInputBorder(                                  borderRadius: BorderRadius.circular(25),                                )),                          ),                        ),                        Container(                          margin: EdgeInsets.only(right: 12),                          padding: EdgeInsets.symmetric(vertical: 5),                          alignment: Alignment.centerRight,                          child: Text('Forget Password?',style: TextStyle(                            color: Colors.white                          ),),                        ),                      ],                    ),                  ),                  GradientButtonWidget(                    textTitle: 'Sign In',                    iconData: Icons.info,                    opacity: 0,                    color1: Colors.deepOrangeAccent,                    color2: Colors.deepOrange,                  ),                  Container(                      child: Padding(                    padding: const EdgeInsets.all(60.0),                    child: Center(                      child: Text(                        'OR',                        style: GoogleFonts.kiteOne(                            fontWeight: FontWeight.w700,color: Colors.white                        ),                      )                    ),                  )),                  Container(                    margin: EdgeInsets.only(bottom: 10),                    alignment: Alignment.bottomCenter,                    child: Column(                  children: [                    GradientButtonWidget(                      textColor: Colors.white,                      iconColor: Colors.white,                      textTitle: 'Sign in with Facebook',                      iconData: FontAwesomeIcons.facebook,                      opacity: 1,                      color1: Colors.lightBlue,                      color2: Colors.blue,                    ),                    SizedBox(                      height: 10,                    ),                    GradientButtonWidget(                      textColor: Colors.black87,                      iconColor: Colors.red.shade700,                      textTitle: 'Sign in with Google',                      iconData: FontAwesomeIcons.google,                      opacity: 1,                      color1: Colors.white,                      color2: Colors.white,                    ),                    SizedBox(                      height: 10,                    ),                    Center(                      child: RichText(                        text: TextSpan(                            text: 'New user?',                            style: TextStyle(                                fontWeight: FontWeight.w300,                                color: Colors.white),                            children: [                              TextSpan(                                  text: ' Sign in',                                  style: TextStyle(fontWeight: FontWeight.w600))                            ]),                      ),                    ),                  ],                    ),                  )                ],              ),            ),          ],        )      ),    );  }}