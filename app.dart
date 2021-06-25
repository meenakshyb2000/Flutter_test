import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  void _refresh() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            textTheme: TextTheme(
                bodyText1: TextStyle(fontSize: 12, color: Colors.white))),
        title: "Meemu's App",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("COUNTER"),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.all(50.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Tapped this many times",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text(
                    '$_counter',
                    style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                onPressed: _increment,
                backgroundColor: Colors.black45,
                child: Icon(Icons.add, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: _decrement,
                backgroundColor: Colors.black45,
                child: Icon(Icons.remove, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: _refresh,
                backgroundColor: Colors.black45,
                child: Icon(Icons.refresh, color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
