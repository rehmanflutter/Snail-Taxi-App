import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snali/Model/HomeModel/homeModel1.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class HomeControler extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void selectItem(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  List<HomeModelPage1> Whertogo = [
    HomeModelPage1(
        icondata: Icon(Icons.location_on_outlined),
        subtitle: 'Tap for location ',
        title: 'New trip'),
    HomeModelPage1(
        icondata: Icon(Icons.home), subtitle: '24km, 39 min ', title: 'Home'),
    HomeModelPage1(
        icondata: Icon(Icons.work), subtitle: '14km, 15 min ', title: 'Work')
  ];

  bottomsheetshow(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            lineConainer(),
            SizedBox(
              height: 40,
            ),
            Textcustam(
              text: 'Allow your location',
              size: 16,
              weight: FontWeight.w700,
            ),
            SizedBox(
              height: 44,
            ),
            Container(
              width: 230,
              child: Textcustam(
                text:
                    'We will need your location to give you better experience',
                align: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              width: 200,
              child: NeumorphicButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: NeumorphicStyle(
                    color: OffBtn,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(20), // Set the border radius
                    ),
                    lightSource: LightSource.bottom,
                    depth: -5,
                    shadowLightColor: Colors.red),
                child: Center(
                    child: Textcustam(
                  text: 'Not now',
                  size: 14,
                  weight: FontWeight.w600,
                  //  col: Colors.,
                )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RoundButton(
                title: 'Ok Sure',
                fun: () {
                  Navigator.pushNamed(context, '/CustamScrolAppBar');
                },
                wigth: 200),
            SizedBox(
              height: 30,
            )
          ],
        );
      },
    );
  }
}
