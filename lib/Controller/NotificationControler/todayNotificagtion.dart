import 'package:flutter/cupertino.dart';
import 'package:snali/Model/NotificationModel/notificationmoded.dart';

class Notificationsee extends ChangeNotifier {
  List<NotificationModels> notificationlist = [
    NotificationModels(
        image: 'images/Coupon-Icon.png',
        subtitle: 'Invte friends - you got 25 gift!',
        time: '1 min ago',
        title: 'Promotion'),
    NotificationModels(
        image: 'images/Mastercard-Logo.png',
        subtitle: 'has been added successfuly',
        time: '10 min ago',
        title: 'New payment method'),
    NotificationModels(
        image: 'images/System-Icon.png',
        subtitle: 'Thank you! your transaction is ...',
        time: '14 h ago',
        title: 'System'),
    NotificationModels(
        image: 'images/Avatar.png',
        subtitle: 'Hello  i think you left your bag',
        time: '2 h ago',
        title: 'Joe smith'),
  ];
}
