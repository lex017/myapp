import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obs = true;
  void showMessage() {
    setState(() {
      obs = !obs;
    });
  }

  Widget LoginDisPlay() {
    return SizedBox(
      width: 160,
      height: 160,
      child: CircleAvatar(
        child: ClipOval(
          child: Image.asset("images/bageon.png"),
        ),
      ),
    );
  }

  Widget showText() {
    return Text(
      "cafe neverland",
      style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.amber[800],
          fontFamily: 'Lobster'),
    );
  }

  Widget userInput() {
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            labelText: 'Username',
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(
              Icons.person,
              color: Colors.amber[900],
              size: 35.0,
            )),
      ),
    );
  }

  Widget passwordInput() {
    return SizedBox(
      width: 350,
      child: TextField(
        obscureText: obs,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            labelText: 'Password',
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(
              Icons.key,
              color: Colors.amber[900],
              size: 35.0,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                showMessage();
              },
              icon: const Icon(Icons.visibility),
            )),
      ),
    );
  }

  Widget LoginButton() {
    return SizedBox(
      width: 100,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      ),
    );
  }

  Widget sigupButton() {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Sigup",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange[900]),
      ),
    );
  }

  Widget LogsignButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LoginButton(),
        sigupButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: RadialGradient(colors: [Colors.grey, Colors.blue])),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LoginDisPlay(),
                const SizedBox(
                  height: 10.0,
                ),
                showText(),
                const SizedBox(
                  height: 10.0,
                ),
                userInput(),
                const SizedBox(
                  height: 10.0,
                ),
                passwordInput(),
                const SizedBox(
                  height: 10.0,
                ),
                LogsignButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
