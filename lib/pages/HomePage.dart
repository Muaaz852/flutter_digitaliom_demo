import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgrounds/LoginScreenBG.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 70),
            child: Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/DigitaliomLogo.png')
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: OutlineButton(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _login();
                        },
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              color: Color.fromRGBO(96, 37, 203, 1),
                            ),
                          ),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          onPressed: () {
                            _createAccount();
                          }),
                    ),
                    Text(
                      'New to app? Please Sign Up for free.',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _login() {
    print('Login Button Pressed');
    Navigator.of(context).pushNamed('/Login');
  }

  void _createAccount() {
    print('Create Account Button Pressed');
  }
}
