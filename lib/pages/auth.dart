import 'package:flutter/material.dart';
import './products.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;

  DecorationImage _buildBackgroundImage() {
    return  DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
              image: AssetImage('assets/background.jpg'),
            );
  }

  Widget _buildEmailField() {
    return TextField(
                  decoration: InputDecoration(labelText: 'Email', filled: true, fillColor: Colors.white),
                  onChanged: (String emailValue) {
                    setState(() {
                      _emailValue = emailValue;
                    });
                  },
                );
  }
  
  Widget _buildPasswordField() {
    return TextField(
                  decoration: InputDecoration(labelText: 'Password', filled: true, fillColor: Colors.white),
                  obscureText: true,
                  onChanged: (String passwordValue) {
                    setState(() {
                      _passwordValue = passwordValue;
                    });
                  },
                );
  }

  Widget _buildAcceptSwitch() {
    return SwitchListTile(
                    value: _acceptTerms,
                    onChanged: (bool value) {
                      setState(() {
                        _acceptTerms = value;
                      });
                    },
                    title: Text('Accept Terms'));
  }

  void _submitForm() {
     Navigator.pushReplacementNamed(context, '/products');
  }
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final targetWidth = deviceWidth > 768.0 ? 500.0 : deviceWidth * 0.95;
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: _buildBackgroundImage()),
            padding: EdgeInsets.all(40.0),
            child: Center(
                child: SingleChildScrollView(
                    child: Container(
                      width: targetWidth,
                      child: Column(
              children: <Widget>[
                _buildEmailField(),
                SizedBox(height: 10.0),
                _buildPasswordField(),
                _buildAcceptSwitch(),
                SizedBox(height: 10.0),
                RaisedButton(
                  child: Text('Login'),
                  textColor: Colors.white,
                  color: Theme.of(context).primaryColor,
                  onPressed: _submitForm
                )
              ],
            ))))));
  }
}
