import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quize/helper/style.dart';
import 'package:quize/pages/signup.dart';
import 'package:quize/pages/tabs.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  static const String page_id = "Login";

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Not having account ?',
            style: TextStyle(
              fontFamily: 'regular',
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Create account',
                style: TextStyle(
                    fontFamily: 'regular', color: appColor, fontSize: 14),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new signup()));
                  },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(fontSize: 24, fontFamily: 'semi-bold'),
            ),
            Text(
              'Login your account',
              style: TextStyle(fontSize: 14, fontFamily: 'regular'),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: simpleInput('Email', 'odhisjoseph85@gmail.com'),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: true,
              decoration: iconInput(
                'Password',
                'Password',
                Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            simpleButton(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tabs()));
            }, 'Login'),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
