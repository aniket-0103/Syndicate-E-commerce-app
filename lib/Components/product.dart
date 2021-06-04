import 'package:covid_trendz/Components/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String name;
  double price;
  String category;
  int _rating ;
  String _admin;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [
                  textField(
                    title: 'Name',
                  ),
                  textField(
                    title: 'Category',
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/product.jpeg',
                    width: 150.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
