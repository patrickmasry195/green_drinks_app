import 'package:flutter/material.dart';
import 'package:green_drinks/views/signup_view.dart';
import 'package:green_drinks/widgets/button.dart';
import 'package:green_drinks/widgets/field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Text(
            'Log in',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
            child: Field(
              hintText: 'User Name',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 13, 20, 0),
            child: Field(
              hintText: 'Password',
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(
                flex: 13,
              ),
              Text(
                'Forget Password?',
                style: TextStyle(color: Color(0xff3e513b)),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
              );
            },
            buttonColor: const Color(0xff339423),
            textColor: Colors.white,
            text: 'Log In',
            borderCircular: 20,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            fontSize: 20,
          ),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'OR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xff5c7957),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Button(
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
          const Spacer(
            flex: 1,
          ),
          Button(
            onPressed: () {
              print('X opening ....');
            },
            buttonColor: Color(0xffc3efbb),
            textColor: Color(0xff465d42),
            text: 'Continue with X',
            iconPath: 'assets/x.png',
            borderCircular: 12.0,
            textAlign: TextAlign.start,
            fontSize: 15,
          ),
          const Spacer(
            flex: 1,
          ),
          Button(
            onPressed: () {
              print('Facebook Opening ....');
            },
            buttonColor: Color(0xffc3efbb),
            textColor: Color(0xff465d42),
            text: 'Continue with Facebook',
            iconPath: 'assets/facebook.png',
            borderCircular: 12.0,
            textAlign: TextAlign.start,
            fontSize: 15,
          ),
          const Spacer(
            flex: 2,
          ),
          const Center(
            child: Text('Don\'t have an account?'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpView()),
              );
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Color(0xff2c4c8f)),
            ),
          ),
          const Spacer(
            flex: 9,
          )
        ],
      ),
    );
  }
}
