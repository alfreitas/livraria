import 'package:onesignal_flutter/onesignal_flutter.dart';

class BlocHome{

  void initOneSignal(){
    OneSignal.shared.init("45cf2b40-cd90-433e-abe4-b85e4042d60d");
    OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);
    OneSignal.shared.setNotificationReceivedHandler((OSNotification notification) {
	    var x = notification.appInFocus;
  });
  }

}