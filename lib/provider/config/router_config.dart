import 'package:flutter/material.dart';
import 'package:flutter_dio_test/provider/config/storage_manager.dart';
import 'package:flutter_dio_test/provider/widget/page_route_anim.dart';
import 'package:flutter_dio_test/provider/page/hs_list_page.dart';

class RouteName{

  static const String hsListDetails = 'hslistdetails';

}

class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.hsListDetails:
        return NoAnimRouteBuilder(HsListPage(1));
    }
  }
}

/// Pop路由
class PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}