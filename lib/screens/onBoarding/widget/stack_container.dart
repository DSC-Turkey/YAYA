import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:educationhelper/screens/onBoarding/widget/tab_bar.dart';
import 'package:educationhelper/utils/customer_clipper.dart';
import 'package:flutter/material.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Stack(
        children: <Widget>[
          Container(),
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/profile.jpg'),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ClipOval(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset('assets/images/profil.png'),
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Ali Ozdemir',
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'yazılımcı',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          TopBar(),
        ],
      ),
    );
  }
}
