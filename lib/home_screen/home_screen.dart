import 'package:flutter/material.dart';
import 'package:mini_proj_eclub/constants.dart';
import 'package:mini_proj_eclub/home_screen/components/news_feed.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NewsFeed(),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: kSecondaryColor.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: kPrimaryColor.withOpacity(0.2),
                          offset: Offset(0, 3),
                          blurRadius: 5,
                        )
                      ]),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
