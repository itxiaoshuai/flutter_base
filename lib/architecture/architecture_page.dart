import 'package:flutter/material.dart';

class ArchitecturePage extends StatefulWidget {
  @override
  _ArchitecturePageState createState() => _ArchitecturePageState();
}

class _ArchitecturePageState extends State<ArchitecturePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('体系'),),
    );
  }
}