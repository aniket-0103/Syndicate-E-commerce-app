import 'package:covid_trendz/Components/product.dart';
import 'package:covid_trendz/Components/product_tile.dart';
import 'package:covid_trendz/Screens/login_page.dart';
import 'package:flutter/material.dart';
import '../Screens/home.dart';

class FeedPage extends StatefulWidget {

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: (){
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Product();
                });
              },
              padding: EdgeInsets.only(left: 4.0),
              icon: Icon(Icons.add,
              color: Colors.white,)),
            Text('Covid Trendz'),
            IconButton(
              icon: Icon(Icons.home,),
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              },)
          ],
        ),
        backgroundColor: Color(0XFF6C63FF),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index){
          return ProductTile();
        },
      ) ,
    );
  }
}
