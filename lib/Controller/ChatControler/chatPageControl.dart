import 'package:flutter/cupertino.dart';

class ChatControl extends ChangeNotifier {
  List<String> message = [
    'Hello, are you nearby?\nJust let me know!',
    'Hi there!',
    ' your fav ice cream flavor? \nAsking for a friend.'
  ];
  TextEditingController chattype = TextEditingController();
}
