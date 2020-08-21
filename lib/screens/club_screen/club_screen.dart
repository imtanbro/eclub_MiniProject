import 'package:flutter/material.dart';
import 'package:mini_proj_eclub/screens/club_screen/club_suggestion.dart';
import 'package:mini_proj_eclub/screens/club_screen/joined_club.dart';
import 'package:mini_proj_eclub/screens/club_screen/my_club.dart';


class ClubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //     appBar: appBar(context),
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[ClubSuggestion(), JoinedClub(), MyClub()],
      ),
    ));
  }
}
