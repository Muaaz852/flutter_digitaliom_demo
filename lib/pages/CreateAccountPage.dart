import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final GlobalKey<FormState> _createAccountFormState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Create an accoutn'),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _createAccountFormState,
          child: Column(
            children: <Widget>[
              _buildFormInputField('First Name'),
              _buildFormInputField('Last Name'),
              _buildFormInputField('Email'),
              _buildFormInputField('Password'),
              _buildFormInputField('Store Name'),
              Row(
                children: <Widget>[
                  Text('Country'),
                  InkWell(
                      child: Text('Select a country code'),
                      onTap: () {
                        _selectCountryCode();
                      }),
                ],
              ),
              _buildFormInputField('Phone Number'),
              _buildFormSignUpButton(),
              Center(child: Text('By creating a account you agree to the')),
              Center(
                child: InkWell(
                  child: Text('Terms and Conditions'),
                  onTap: () => Navigator.of(context).pushNamed('/TermsAndConditions'),
                ),
              ),
              Center(
                child: Text('and'),
              ),
              Center(
                child: InkWell(
                  child: Text('Privacy Policy'),
                  onTap: () => Navigator.of(context).pushNamed('/PrivacyPolicy'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormInputField(String placeholderText) {
    return TextFormField(
      key: _createAccountFormState,
      decoration: InputDecoration(hintText: placeholderText),
      validator: (String value) {
        return 'Please enter $placeholderText';
      },
    );
  }

  Widget _buildFormSignUpButton() {
    return FlatButton(
      key: _createAccountFormState,
      child: Text('Sign Up'),
      onPressed: () {
        _signUp();
      },
    );
  }

  void _selectCountryCode() {
    print('Country Code Tapped');
  }

  void _signUp() {
    print('Sign Up Button Pressed');
  }
}
