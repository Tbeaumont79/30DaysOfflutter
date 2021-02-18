import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dismissible',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Dismissible'),
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
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                  if (direction == DismissDirection.startToEnd) {
                    print("Add to favorite");
                  } else {
                    print('Remove item');
                  }
                },
                background: Container(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                ),
                child: ListTile(
                  title: Text('$item'),
                ));
          },
        ),
      ),
    );
  }
}
