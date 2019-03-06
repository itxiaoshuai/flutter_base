import 'package:flutter/material.dart';

class PublicPage extends StatefulWidget {
  @override
  _PublicState createState() => _PublicState();
}

class _PublicState extends State<PublicPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('公众号'),),
    );
  }
}