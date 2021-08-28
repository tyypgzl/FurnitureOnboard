import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Furniture Home"),
      ),
      body: Container(
          child: Column(
        children: [
          Text("Voluptate cupidatat anim qui et."),
          Text("Irure officia ad ea dolore nisi ullamco."),
          Text("Deserunt sunt proident consequat sint dolore ullamco."),
        ],
      )),
    );
  }
}
