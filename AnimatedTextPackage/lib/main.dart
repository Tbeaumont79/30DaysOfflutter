import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
      home: MyHomePage(title: 'Flutter Animated Text Kit Package Demo'),
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
        title: Text(widget.title, style: TextStyle(fontSize: 14)),
      ),
      body: Center(
        child: Container(
          child: SizedBox(
            width: 400,
            child: TextLiquidFill(
              text: 'LIQUIDID IS IN THE TEXT',
              waveColor: Colors.blueAccent,
              boxBackgroundColor: Colors.black,
              textStyle: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 350.0,
            ),
          ),
        ),
      ),
    );
  }
}
