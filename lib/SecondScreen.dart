import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyHomePage(title: '测试终端'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _str = '按键';
  TextEditingController _userPasswordController = new TextEditingController();

  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _userPasswordController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            RaisedButton(
              onPressed: () {
//                Navigator.pop(context);
                /*            Navigator.pushNamed(context, '/loginview').then((value) {
                  // dialog显示返回值
                  log('message' + value);
                  setState(() {
                    _str = value;
                  });
//                  setState
                });*/
                setState(() {
                  _str = _userPasswordController.text.toString();
                });
              },
              child: Text(_str),
            ),
            Text(_str),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.accessible),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
