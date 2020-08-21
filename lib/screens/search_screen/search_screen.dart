import 'package:flutter/material.dart';
import 'package:mini_proj_eclub/screens/search_screen/search_box.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: appBar(context),
      body: Column(
        children: <Widget>[
          SearchBox(),
        ],
      ),
    );
  }
}
