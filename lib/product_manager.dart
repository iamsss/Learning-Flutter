import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      return _ProductManagerState();
    }
}

class _ProductManagerState extends State<ProductManager> {
  
  List<String> _products = ['Product 1'];
  @override
    Widget build(BuildContext context) {
      return Column(children: [Container(
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
              Products(_products)
              ],);
    }
}