import 'package:flutter/material.dart';
import 'package:twitter_ui/Animation/FadeAnimation.dart';

class TwitterSignUp extends StatefulWidget {
  @override
  _TwitterSignUpState createState() => _TwitterSignUpState();
}

class _TwitterSignUpState extends State<TwitterSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: 40,
          height: 40,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/image/twitter.png'),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Color(0xFF00acee)),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Create your account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 100),
                        // FadeAnimation(
                        //   1.4,

                        // ),
                        Container(
                          width: 350,
                          // decoration: BoxDecoration(
                          //   color: Colors.white,
                          //   borderRadius: BorderRadius.circular(5),
                          //
                          // ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
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
                                      hintText: "Name",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent))),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '50',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 20),
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
                                      hintText: "Phone number or email address",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent))),
                                ),
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
                                              color: Colors.blueAccent))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 180),
                      ],
                    ),
                  ]),
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
                              // Navigator.push(context,MaterialPageRoute(builder: (context) => FacebookSignUp()),);
                            },
                            child: Center(
                              child: Text(
                                "next",
                                style: TextStyle(
                                    fontSize: 22,
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
