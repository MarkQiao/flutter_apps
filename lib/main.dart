import 'package:flutter/cupertino.dart';
import 'SecondScreen.dart';
import 'login/loginview.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '移动执法',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When we navigate to the "/second" route, build the SecondScreen Widget
        //路由器
        '/second': (context) => SecondScreen(),
        '/loginview': (context) => loginview(),
      },
      home: MyHomePage(title: 'FlutterDemoCS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _gologin() {
    Navigator.pushNamed(context, '/second');
  }

  void _oclick() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AboutDialog(
            applicationName: "名字",
            applicationIcon: Image.asset("images/app.png"),
            applicationVersion: "1.0.0",
            children: <Widget>[
              Text("内容内容内容内容内容内容内容"),
            ],
          );
        });
    Navigator.pushNamed(context, '/second');
  }

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
            Image.network(
              "https://bkimg.cdn.bcebos.com/pic/03087bf40ad162d99377e2451edfa9ec8b13cdca?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UxNTA=,xp_5,yp_5",
              height: 30,
              width: 30,
            ),
            Text(
              '你可以按下按钮进行增加:',
//
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                    onPressed: _gologin,
                    child: Text('测试'),
                    highlightColor: Colors.deepOrange,
                    color: Colors.brown)
              ],
            ),
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
