import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationService {
  ///final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>(); without constructor

  late GlobalKey<NavigatorState> navigatorkey;

  ///type

  NavigationService() {
    navigatorkey = GlobalKey<NavigatorState>();

    /// variable init
  }

  navigate(Widget widget) {
    return navigatorkey.currentState
        ?.push(MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    }));
  }

  navigateReplace(Widget widget) {
    return navigatorkey.currentState
        ?.pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    }));
  }

  Future<void> showDailog(Widget widget) async {
    await showAdaptiveDialog(
      context: navigatorkey.currentContext!,
      builder: (BuildContext context) {
        return widget;
      },
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(navigatorkey.currentContext!)
        .hideCurrentMaterialBanner();
    ScaffoldMessenger.of(navigatorkey.currentContext!).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
        content: Text(
      "SnackBar shown success,",
      style: TextStyle(color: Colors.white),
    )));
  }
}
