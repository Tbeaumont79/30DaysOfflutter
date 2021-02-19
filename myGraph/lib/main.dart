import 'package:bezier_chart/bezier_chart.dart';
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
      home: MyHomePage(title: 'Flutter Bezier chart Demo'),
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
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    child: BezierChart(
                      bezierChartScale: BezierChartScale.CUSTOM,
                      xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55],
                      series: const [
                        BezierLine(
                          lineColor: Colors.blue,
                          data: const [
                            DataPoint<double>(value: 150, xAxis: 0),
                            DataPoint<double>(value: 130, xAxis: 5),
                            DataPoint<double>(value: 100, xAxis: 10),
                            DataPoint<double>(value: 95, xAxis: 15),
                            DataPoint<double>(value: 90, xAxis: 20),
                            DataPoint<double>(value: 85, xAxis: 25),
                            DataPoint<double>(value: 83, xAxis: 30),
                            DataPoint<double>(value: 82.5, xAxis: 35),
                            DataPoint<double>(value: 81.6, xAxis: 40),
                            DataPoint<double>(value: 80.2, xAxis: 45),
                            DataPoint<double>(value: 78.5, xAxis: 50),
                            DataPoint<double>(value: 77.5, xAxis: 55),
                          ],
                        ),
                      ],
                      config: BezierChartConfig(
                        verticalIndicatorStrokeWidth: 3.0,
                        verticalIndicatorColor: Colors.black26,
                        showVerticalIndicator: true,
                        backgroundColor: Color(0xfff4f9f9),
                        xAxisTextStyle: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
