import 'package:flutter/material.dart';
import 'package:test_app/screen/auth_screen.dart';

import 'original_button.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;
  const AuthForm({Key? key, required this.authType}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  //this key for connect with field in form
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) => _email = value,
                validator: (value) =>
                    value!.isEmpty ? 'Enter your valid email' : null,
                decoration: InputDecoration(
                  labelText: 'Enter Your Email',
                  hintText: 'mahr.bwb@gmail.com',
                  icon: Icon(
                    Icons.perm_identity,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) => _password = value,
                validator: (value) => value!.length < 6
                    ? 'your password is must be longer than 6 character'
                    : null,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  icon: Icon(
                    Icons.lock,
                    color: Colors.lightBlue,
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              OriginalButton(
                text: widget.authType == AuthType.login ? 'Login' : 'Register',
                textColor: Colors.white,
                bgColor: Colors.lightBlue,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
              SizedBox(
                height: 5,
              ),
              FlatButton(
                onPressed: () {
                  if (widget.authType == AuthType.login)
                    Navigator.of(context).pushReplacementNamed('register');
                  else
                    Navigator.of(context).pushReplacementNamed('login');
                },
                child: Text(
                  widget.authType == AuthType.login
                      ? 'Don\'t hava an account ?'
                      : 'You hava an account ?',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
