import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:study_mobx_2/app/modules/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key key, this.title = 'Login'}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          RaisedButton(
              child: Text('Login com Google'),
              onPressed: controller.loginWithGoogle)
        ],
      ),
    );
  }
}
