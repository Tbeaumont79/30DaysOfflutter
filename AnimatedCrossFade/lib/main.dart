import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'Flutter AnimatedCrossFade Demo '),
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
  bool _currently = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '#30DaysOfFlutter is ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: _currently == false ? Colors.blue : Colors.green,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: AnimatedCrossFade(
                  firstChild: Text(
                    'in progress',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  secondChild: Text(
                    'done',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  firstCurve: Curves.easeOut,
                  secondCurve: Curves.easeIn,
                  sizeCurve: Curves.bounceOut,
                  crossFadeState: _currently
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(seconds: 2)),
            ),
          ),
          InkWell(
            onTap: () => setState(() => _currently = !_currently),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Click me !',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      )),
    );
  }
}
