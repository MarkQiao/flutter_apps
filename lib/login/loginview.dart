import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录页面"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
//                Navigator.pop(context);
                Navigator.of(context).pop('这个是要返回给上一个页面的数据');
              },
              child: Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}
