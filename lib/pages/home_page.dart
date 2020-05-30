import 'package:flutter/material.dart';
import 'page_c.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Center(
    child: Container(
      height: 350,
      width: 300,
      child: Navigator(
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settins) {
          WidgetBuilder builder;
          switch (settins.name) {
            case '/':
              builder = (context) => PageC();
              break;
          }
          return MaterialPageRoute(builder: builder);
        },
      ),
    ),
  );
  }
}