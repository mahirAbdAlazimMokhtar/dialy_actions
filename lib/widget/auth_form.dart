import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Your Email',
                  hintText: 'mahr.bwb@gmail.com',
                  icon: Icon(
                    Icons.perm_identity,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  icon: Icon(
                    Icons.lock,
                    color: Colors.lightBlue,
                  ),
                ),
                obscureText: true,
              ),
            ],
          ),
        ))
      ],
    );
  }
}
