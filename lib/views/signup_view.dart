import 'package:flutter/material.dart';
import 'package:green_drinks/views/login_view.dart';
import 'package:green_drinks/widgets/button.dart';
import 'package:green_drinks/widgets/field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 5),
            child: Field(hintText: 'Full Name'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
            child: Field(hintText: 'User Name'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
            child: Field(hintText: 'Password'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 35),
            child: Field(hintText: 'Confirm Password'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
            child: Button(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpView()),
                );
              },
              fontSize: 20,
              textAlign: TextAlign.center,
              text: 'Sign Up',
              borderCircular: 20,
              buttonColor: const Color(0xff339423),
              textColor: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Center(
            child: Text(
              'OR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xff5c7957),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Button(
              onPressed: () {
                print('Google opening ....');
              },
              buttonColor: const Color(0xffc3efbb),
              textColor: const Color(0xff465d42),
              text: 'Continue with Google',
              iconPath: 'assets/google.png',
              borderCircular: 12.0,
              textAlign: TextAlign.start,
              fontSize: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Button(
              onPressed: () {
                print('X opening ....');
              },
              buttonColor: const Color(0xffc3efbb),
              textColor: const Color(0xff465d42),
              text: 'Continue with X',
              iconPath: 'assets/x.png',
              borderCircular: 12.0,
              textAlign: TextAlign.start,
              fontSize: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 35),
            child: Button(
              onPressed: () {
                print('Facebook opening ....');
              },
              buttonColor: const Color(0xffc3efbb),
              textColor: const Color(0xff465d42),
              text: 'Continue with Facebook',
              iconPath: 'assets/facebook.png',
              borderCircular: 12.0,
              textAlign: TextAlign.start,
              fontSize: 15,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 1),
            child: Center(
              child: Text('Already have an account?'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 1, 20, 5),
            child: MaterialButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginView()),
                );
              },
              child: const Text(
                'Log In',
                style: TextStyle(color: Color(0xff2c4c8f)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
