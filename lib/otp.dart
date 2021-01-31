import 'package:flutter/material.dart';
import 'package:signup/main.dart';
import 'package:signup/password.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 350.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/back.jpg'),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40.0,
                    offset: Offset(0, 10),
                    color: Colors.indigo[900],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30.0,
                        offset: Offset(0, 10),
                        color: Colors.deepOrange,
                      )
                    ]),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.person_rounded,
                            color: Colors.black,
                            size: 70.0,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(6.0, 0, 6.0, 6.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                            obscureText: !_obscureText,
                            decoration: InputDecoration(
                              labelText: 'Enter OTP',
                              suffixIcon: new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: new Icon(_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              hoverColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Text(
                              'Change Number',
                            ),
                          ),
                        ),
                        Container(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Password()),
                              );
                            },
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.deepOrange,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Already have an Account?',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
