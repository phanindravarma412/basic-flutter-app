import 'package:flutter/material.dart';
import 'package:whatsapp/screens/full_app.dart';

import 'package:whatsapp/widgets/login_input_field.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image.asset('assets/loginimage.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 10.0, bottom: 20.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    LoginInputField(
                      placeholder: 'Enter your email',
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'please enter your email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    LoginInputField(
                      placeholder: 'Enter your password',
                      hideText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      },
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      color: Colors.blueAccent,
                      // decoration: BoxBorder(),
                      child: FlatButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FullApp(),
                              ),
                            );
                          }
                        },
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => FullApp()),
                        // );
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              'Forget Password ?',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
