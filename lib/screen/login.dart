import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login Form')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                LoginForm(),
              ]),
        ));
  }
}

class LoginForm extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: Form(
        key: formKey,
        child: Column(children: <Widget>[
          emailFormField(),
          passwordFormField(),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: submitButton(),
          )
        ]),
      ),
    );
  }

  Widget emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'อีเมล', hintText: 'กรอกอีเมล', icon: Icon(Icons.email)),
      validator: (value) {
        return null;
      },
      onSaved: (String? value) {
        email = value ??= "";
      },
    );
  }

  Widget passwordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'รหัสผ่าน',
          hintText: 'กรอกรหัสผ่าน',
          icon: Icon(Icons.lock)),
      validator: (String? value) {
        value = value ??= "";
        if (value.length > 8) {
          return 'รหัสผ่านต้องมากกว่า 8';
        }
        return null;
      },
      onSaved: (String? value) {
        password = value ??= "";
      },
    );
  }

  ElevatedButton submitButton() {
    return ElevatedButton(
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'เข้าสู่ระบบ',
          ),
        ),
        onPressed: () {
          print('อีเมล: $email รหัสผ่าน: $password');
        });
  }
}
