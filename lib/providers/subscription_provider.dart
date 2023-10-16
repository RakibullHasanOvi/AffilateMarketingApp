import '../model/subscription_model.dart';
import 'package:flutter/foundation.dart';

class SubscriptionProvider extends ChangeNotifier {
  SubscriptionModel _subscriptionModel =
      SubscriptionModel(hasSubscription: true);

  bool get hasSubscription => _subscriptionModel.hasSubscription;

  void updateSubscriptionStatus(bool newStatus) {
    _subscriptionModel = SubscriptionModel(hasSubscription: newStatus);
    notifyListeners();
  }
}
