import 'package:flutter/material.dart';
import 'package:mini_proj_eclub/constants.dart';

class JoinedClub extends StatefulWidget {
  @override
  _JoinedClubState createState() => _JoinedClubState();
}

class _JoinedClubState extends State<JoinedClub> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 15),
              child: Text(
                "Joined Clubs",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0, top: 15),
              child: Container(
                height: 30,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: InkWell(
                  child: Text(
                    "More",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor),
                  ),
                  onTap: () {
                    debugPrint("tap");
                  },
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: kSecondaryColor.withOpacity(0.2)),
            ),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8.0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: kSecondaryColor.withOpacity(0.2)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3, 3),
                              blurRadius: 5,
                              color: kPrimaryColor.withOpacity(.13))
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
