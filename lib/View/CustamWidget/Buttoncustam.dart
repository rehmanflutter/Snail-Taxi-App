import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'textcustam.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback fun;
  final Color? col;

  final double wigth;
  RoundButton(
      {required this.title, required this.fun, this.col, required this.wigth});
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: wigth,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(circular!),
        // color: col,
        boxShadow: [
          BoxShadow(
            color: Colors.yellow.shade100, // Shadow color
            offset: Offset(0, 10), // Offset to the bottom
            blurRadius: 4,
          ) // Blur radius of the shadow
        ],
      ),
      child: NeumorphicButton(
        onPressed: fun,
        style: NeumorphicStyle(
            color: Color(0xffffbd30),
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(20), // Set the border radius
            ),
            lightSource: LightSource.bottom,
            depth: 1,
            shadowLightColor: Colors.yellow.shade100),
        child: Center(
            child: Textcustam(
          text: title,
          size: 14,
          weight: FontWeight.w600,
          //  col: Colors.,
        )),
      ),
    );
  }
}

class RoundButtonIcon extends StatelessWidget {
  // final String? title;
  final VoidCallback fun;
  final Color? col;
  final Icon? icon;
  final double wigth;
  final double hight;
  RoundButtonIcon(
      { //this.title,
      required this.fun,
      this.col,
      required this.wigth,
      required this.hight,
      this.icon});
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      height: 40,
      width: 40,
      child: NeumorphicButton(
          onPressed: fun,
          style: NeumorphicStyle(
              color: Color(0xffffbd30),
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(15), // Set the border radius
              ),
              lightSource: LightSource.bottom,
              depth: 4,
              shadowLightColor: Colors.yellow.shade400),
          child: Align(
              alignment: Alignment.center,
              child: Icon(Icons.location_disabled_sharp))),
    );
  }
}
