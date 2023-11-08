import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustamContainer extends StatelessWidget {
  final double hight;
  final double wigth;
  final Color? col;
  final Widget? child;
  final double? circular;
  final double? depth;
  CustamContainer(
      {required this.hight,
      required this.wigth,
      this.col = Colors.transparent,
      this.child,
      this.circular = 10,
      this.depth = 0});
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        style: NeumorphicStyle(
            depth: depth,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(circular!),
            ),
            color: col),
        child: Container(
          height: hight,
          width: wigth,
          child: Center(child: child),
        ));
  }
}

// simplecontainer

class SimpleContainer extends StatelessWidget {
  final double hight;
  final double wigth;
  final Color? col;
  final Widget? child;
  final double? circular;
  final double? depth;
  final Color? shcol;

  SimpleContainer({
    required this.hight,
    required this.wigth,
    this.col = Colors.transparent,
    this.child,
    this.circular = 10,
    this.depth = 0,
    this.shcol = Colors.black12,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: wigth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(circular!),
        color: col,
        boxShadow: [
          BoxShadow(
            color: shcol!, // Shadow color
            offset: Offset(0, depth!), // Offset to the bottom
            blurRadius: 4,
          ) // Blur radius of the shadow
        ],
      ),
      child: Center(child: child),
    );
  }
}
