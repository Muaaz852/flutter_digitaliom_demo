import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginFormState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25.0),
        child: Form(
          key: _loginFormState,
          child: Column(
            children: <Widget>[
              _buildUsernameTextFormField(),
              SizedBox(height: 30.0,),
              _buildPasswordTextFormField(),
              SizedBox(height: 27.0,),
              _buildLoginButton(),
              SizedBox(height: 10.0,),
              _buildForgotPasswordButton(),
              Text("Don't have an account? "),
              InkWell(
                child: Text('Sign up'),
                onTap: () {
                  _signUp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUsernameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Username',
        prefixIcon: Icon(Icons.person_outline),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter username';
        }
      },
    );
  }

  Widget _buildPasswordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Password',
        prefixIcon: Icon(Icons.lock_outline),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter password';
        }
      },
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color.fromRGBO(96, 37, 203, 1),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          _login();
        },
      ),
    );
  }

  Widget _buildForgotPasswordButton() {
    return SizedBox(
      width: double.infinity,
      child: OutlineButton(
        child: Text(
          'Forgot Password',
          style: TextStyle(
            color: Color.fromRGBO(96, 37, 203, 1),
          ),
        ),
        borderSide: BorderSide(
          color: Color.fromRGBO(96, 37, 203, 1),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () {
          _forgotPassword();
        },
      ),
    );
  }

  void _login() {
    print('Login Button Pressed');
  }

  void _forgotPassword() {
    print('Forgot Password Button Pressed');
  }

  void _signUp() {
    print('Sign Up Text Tapped');
  }
}
