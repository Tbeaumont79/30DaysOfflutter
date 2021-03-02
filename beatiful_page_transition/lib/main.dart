import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import './screens/myContact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return PageTransition(
              child: MyHomePage(title: 'Flutter page_transition package'),
              type: PageTransitionType.topToBottom,
              settings: settings,
            );
          case '/contact':
            return PageTransition(
              child: MyContact(),
              type: PageTransitionType.rotate,
            );
            break;
          default:
            return null;
        }
      },
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Card(
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, '/contact'),
          child: Icon(Icons.person, size: 40),
        ),
      )),
    );
  }
}
