import 'package:flutter/material.dart';
import 'package:login_screen/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String tag = 'Login page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/3135715.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'oniaduragbemijoshua@gmail.com',
      decoration: InputDecoration(
        hintText: 'email',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.5)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'joshadura',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.5)),
      ),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        child: const Text('Log In',
            style: TextStyle(color: Colors.lightBlueAccent)),
      ),
    );

    final forgotLabel = TextButton(
      onPressed: () {},
      child: const Text(
        'Forgot Passord?',
        style: TextStyle(color: Colors.black54),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            const SizedBox(height: 48.0),
            email,
            const SizedBox(height: 8.0),
            password,
            const SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
