import 'package:flutter/material.dart';
import 'package:mini_proj_eclub/constants.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(Icons.dashboard, color: kPrimaryColor),
      onPressed: () {},
    ),
    title: RichText(
        text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.w900),
            children: [
          TextSpan(
            text: "e",
            style: TextStyle(color: kSecondaryColor),
          ),
          TextSpan(text: "Club", style: TextStyle(color: kPrimaryColor))
        ])),
    actions: <Widget>[
      IconButton(
          icon: Icon(Icons.notifications, color: kSecondaryColor),
          onPressed: () {})
    ],
    centerTitle: true,
  );
}
