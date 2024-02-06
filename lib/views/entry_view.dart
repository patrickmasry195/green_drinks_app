import 'package:flutter/material.dart';
import 'package:green_drinks/views/login_view.dart';
import 'package:green_drinks/views/signup_view.dart';
import 'package:green_drinks/widgets/button.dart';

class EntryView extends StatelessWidget {
  const EntryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 14),
            child: Row(
              children: [
                Text(
                  'Green Drinks',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: Row(
              children: [
                Text(
                  'Find and order',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.5,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: Row(
              children: [
                Text(
                  'delicious but healthy and\nsmoothies',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.5,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Image(
              image: AssetImage('assets/healthy.png'),
            ),
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
          Button(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpView()),
              );
            },
            buttonColor: const Color(0xff339423),
            textColor: Colors.white,
            text: 'Sign Up',
            borderCircular: 20,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            fontSize: 20,
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
