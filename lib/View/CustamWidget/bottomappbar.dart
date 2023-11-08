// import 'package:flutter/material.dart';
// import 'package:snali/View/CustamWidget/numorphiContainer.dart';
// import 'package:snali/View/Screens/Booking/boking.dart';
// import 'package:snali/View/Screens/History/rideistoryss.dart';
// import 'package:snali/View/Screens/Notification/notification.dart';
// import 'package:snali/View/Screens/Settings/accountsetting.dart';
// import 'package:snali/View/custams.dart';

// class CustamScrolAppBar extends StatefulWidget {
//   @override
//   _BottomBarCusState createState() => _BottomBarCusState();
// }

// class _BottomBarCusState extends State<CustamScrolAppBar> {
//   int selectedIndex = 2;
//   PageController _pageController = PageController(initialPage: 2);
//   final List<Widget> pages = [
//     NotificationsClass(),
//     HistoryBottomapp(),
//     Booking(),
//     Center(child: Text('Screen 5')),
//     AccountSetting(),
//   ];

//   void onTabTapped(int index) {
//     _pageController.animateToPage(
//       index,
//       duration: Duration(milliseconds: 300),
//       curve: Curves.ease,
//     );
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageView(
//           controller: _pageController,
//           children: pages,
//           onPageChanged: (index) {
//             setState(() {
//               selectedIndex = index;
//             });
//           },
//         ),
//         bottomNavigationBar: BottomAppBar(
//           color: Colors.transparent,
//           elevation: 0,
//           child: Container(
//               height: 102,
//               child: CustomPaint(
//                 size: Size(375, 102),
//                 painter: RPSCustomPainter(),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     buildNavItem(
//                       Icons.home,
//                       0,
//                     ),
//                     buildNavItem(
//                       Icons.more_time,
//                       1,
//                     ),
//                     GestureDetector(
//                         onTap: () {
//                           onTabTapped(2);
//                         },
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             SimpleContainer(
//                               hight: 50,
//                               wigth: 50,
//                               col: Btncol,
//                               circular: 25,
//                               depth: 15,
//                               shcol: Colors.yellow.shade100,
//                               child: Icon(Icons.time_to_leave_outlined),
//                             ),
//                           ],
//                         )),
//                     buildNavItem(
//                       Icons.comment,
//                       3,
//                     ),
//                     buildNavItem(
//                       Icons.settings,
//                       4,
//                     ),
//                   ],
//                 ),
//               )),
//         ));
//   }

//   Widget buildNavItem(
//     IconData icon,
//     int index,
//   ) {
//     return selectedIndex == index
//         ? Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               IconButton(
//                 onPressed: () => onTabTapped(index),
//                 icon: Icon(icon),
//               ),
//               Text(
//                 '.',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 17,
//                 ),
//               )
//             ],
//           )
//         : Row(
//             children: [
//               IconButton(
//                 onPressed: () => onTabTapped(index),
//                 icon: Icon(
//                   icon,
//                 ),
//               ),
//             ],
//           );
//   }
// }

// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Layer 1

//     Paint paint_fill_0 = Paint()
//       ..color = const Color.fromARGB(255, 255, 255, 255)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.0029875, size.height * 1.0148200);
//     path_0.lineTo(size.width * 1.0016250, size.height * 1.0033600);
//     path_0.lineTo(size.width * 0.9987875, size.height * 0.3006600);
//     path_0.lineTo(size.width * 0.2764375, size.height * 0.3032000);
//     path_0.quadraticBezierTo(size.width * 0.3081875, size.height * 0.1418000,
//         size.width * 0.5214125, size.height * 0.0881000);
//     path_0.quadraticBezierTo(size.width * 0.6351000, size.height * 0.1070000,
//         size.width * 0.7495875, size.height * 0.3017800);
//     path_0.lineTo(size.width * -0.0061875, size.height * 0.2977600);

//     canvas.drawPath(path_0, paint_fill_0);

//     // Layer 1

//     Paint paint_stroke_0 = Paint()
//       ..color = Colors.transparent
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_0, paint_stroke_0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/Screens/Booking/boking.dart';
import 'package:snali/View/Screens/History/rideistoryss.dart';
import 'package:snali/View/Screens/Notification/notification.dart';
import 'package:snali/View/Screens/Settings/accountsetting.dart';
import 'package:snali/View/custams.dart';

class CustamScrolAppBar extends StatefulWidget {
  @override
  _BottomBarCusState createState() => _BottomBarCusState();
}

class _BottomBarCusState extends State<CustamScrolAppBar> {
  int selectedIndex = 2;
  PageController _pageController = PageController(initialPage: 2);
  final List<Widget> pages = [
    NotificationsClass(),
    HistoryBottomapp(),
    Booking(),
    Center(child: Text('Screen 5')),
    AccountSetting(),
  ];

  void onTabTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            height: 102,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xfff5f6fa),
                image: DecorationImage(
                    image: AssetImage('images/app.png'), fit: BoxFit.cover)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildNavItem(
                  Icons.home,
                  0,
                ),
                buildNavItem(
                  Icons.more_time,
                  1,
                ),
                GestureDetector(
                    onTap: () {
                      onTabTapped(2);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SimpleContainer(
                          hight: 50,
                          wigth: 50,
                          col: Btncol,
                          circular: 25,
                          depth: 15,
                          shcol: Colors.yellow.shade100,
                          child: Icon(Icons.time_to_leave_outlined),
                        ),
                      ],
                    )),
                buildNavItem(
                  Icons.comment,
                  3,
                ),
                buildNavItem(
                  Icons.settings,
                  4,
                ),
              ],
            ),
          )),
    );
  }

  Widget buildNavItem(
    IconData icon,
    int index,
  ) {
    return selectedIndex == index
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () => onTabTapped(index),
                icon: Icon(icon),
              ),
              Text(
                '.',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              )
            ],
          )
        : Row(
            children: [
              IconButton(
                onPressed: () => onTabTapped(index),
                icon: Icon(
                  icon,
                ),
              ),
            ],
          );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0029875, size.height * 1.0148200);
    path_0.lineTo(size.width * 1.0016250, size.height * 1.0033600);
    path_0.lineTo(size.width * 0.9987875, size.height * 0.3006600);
    path_0.lineTo(size.width * 0.2764375, size.height * 0.3032000);
    path_0.quadraticBezierTo(size.width * 0.3081875, size.height * 0.1418000,
        size.width * 0.5214125, size.height * 0.0881000);
    path_0.quadraticBezierTo(size.width * 0.6351000, size.height * 0.1070000,
        size.width * 0.7495875, size.height * 0.3017800);
    path_0.lineTo(size.width * -0.0061875, size.height * 0.2977600);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}











// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';

// class CustamScrolAppBar extends StatefulWidget {
//   @override
//   State<CustamScrolAppBar> createState() => _CustamScrolAppBarState();
// }

// class _CustamScrolAppBarState extends State<CustamScrolAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('')),
//       bottomNavigationBar: ConvexAppBar(
//         style: TabStyle.fixedCircle,
//         items: [
//           TabItem(icon: Icons.home, title: 'Home'),
//           TabItem(icon: Icons.home, title: 'Home'),
//           TabItem(icon: Icons.home, title: 'Home'),
//           TabItem(icon: Icons.home, title: 'Home'),
//           TabItem(icon: Icons.home, title: 'Home'),
//         ],
//         initialActiveIndex: 0,
//         onTap: (int index) {
//           setState(() {});
//         },
//       ),
//     );
//   }
// }
