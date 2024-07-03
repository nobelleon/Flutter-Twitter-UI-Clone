import 'package:flutter/material.dart';
import 'package:twitter_ui/Animation/FadeAnimation.dart';
import 'package:twitter_ui/twitter/twitter_SignUp.dart';

import '../src/beranda.dart';

class TwitterSignIn extends StatefulWidget {
  @override
  _TwitterSignInState createState() => _TwitterSignInState();
}

class _TwitterSignInState extends State<TwitterSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Color(0xFF00acee)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 40,
              height: 30,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/image/twitter.png'),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TwitterSignUp()),
                  );
                },
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF00acee),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon:
                  new Icon(Icons.more_vert_outlined, color: Color(0xFF00acee)),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Log in to Twitter',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        // FadeAnimation(
                        //   1.4,

                        // ),
                        Container(
                          width: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(height: 30),
                              Container(
                                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText:
                                          "Phone number , email address or username",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent))),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),

                                child: TextField(
                                  obscureText: true,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: new UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.s,
                      children: const [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Forrgotten your password?',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(height: 300),
                      ],
                    ),
                  )
                ],
              ),
              //--------------
              // Login Button
              //--------------
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.s,
                      children: [
                        // FadeAnimation(
                        //   1.6,

                        // ),
                        Container(
                          height: 35,
                          width: 90,

                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF00acee)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Beranda()),
                              );
                            },
                            child: Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
