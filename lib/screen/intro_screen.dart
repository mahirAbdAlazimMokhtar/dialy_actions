import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.white54,
                  Colors.deepPurple,
                  Colors.deepPurpleAccent,
                ]),
          ),
        ),
        title: Text('My Dialy Actions'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 400,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('login');
                    print('Clicked me');
                  },
                  color: Colors.white,
                  child: Text(
                    'Get Started!',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.2,
                      color: Colors.lightBlue[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
