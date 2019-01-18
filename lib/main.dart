import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Product 1'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Easy List Reload'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton( 
                  onPressed: () {
                    setState(() {        
                    _products.add('Product 2'); 
                                        });
                  },
                  child: Text('Add Products'),
                ),
              ),
              Column(
                children: _products
                    .map((element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food.jpeg'),
                              Text(element)
                            ],
                          ),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}
