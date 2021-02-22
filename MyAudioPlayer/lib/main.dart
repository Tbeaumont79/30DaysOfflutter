import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AudioPlayer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter AudioPlayer Demo'),
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
  AudioPlayer player;
  static AudioCache cache = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Podcast',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Card(
                child: Image.asset(
              'assets/images/parlonsJavascript.png',
              height: 300,
              width: 300,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.play_arrow_outlined,
                      size: 40,
                      color: Colors.blue,
                    ),
                    onPressed: () async {
                      player = await cache.play('songs/episode3Expressjs.mp3',
                          volume: 0.6);
                    }),
                IconButton(
                    icon: Icon(
                      Icons.stop_rounded,
                      size: 40,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      player.pause();
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
