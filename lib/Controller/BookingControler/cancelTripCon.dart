import 'package:flutter/cupertino.dart';

class CancelTripControler with ChangeNotifier {
  List<String> title = [
    'Waiting for long time',
    'Wrong address shown',
    'The price is not reasonable',
    'Ride isn’t here',
    'Others',
  ];

  List<bool> selectedItems = List.filled(5, false);

  void toggleItemSelectionAccommodation(int selectedIndex) {
    selectedItems[selectedIndex] = !selectedItems[selectedIndex];
    notifyListeners();
  }

  bool isItemSelected(int index) {
    return selectedItems[index];
  }

  bool _checkBoxNotifierAccommodation = false;

  bool get checkBoxValuesAccommodation => _checkBoxNotifierAccommodation;

  void boxvalueAccommodation(bool newValue) {
    _checkBoxNotifierAccommodation = newValue;
    notifyListeners();
  }

  void selectAllItems() {
    selectedItems = List.filled(title.length, true);
    notifyListeners();
  }

  void deselectAllItems() {
    selectedItems = List.filled(title.length, false);
    notifyListeners();
  }
}
