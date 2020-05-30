import 'package:flutter/material.dart';
import 'package:flutterapp/pages/trans_deal.dart';

class MsgPage extends StatelessWidget {
  List<String> strItems = <String>[
    '车牌查询',
    '车牌确认',
    '未结交易查询',
    '锁定交易',
    '通知结单',
    // '图标 -> zoom_out',
    // '图标 -> youtube_searched_for',
    // '图标 -> wifi_tethering',
    // '图标 -> wifi_lock',
    // '图标 -> widgets',
    // '图标 -> weekend',
    // '图标 -> web',
    // '图标 -> accessible',
    // '图标 -> ac_unit',
  ];

  List<Icon> iconItems = <Icon>[
    new Icon(Icons.youtube_searched_for),
    new Icon(Icons.youtube_searched_for),
    new Icon(Icons.youtube_searched_for),
    new Icon(Icons.lock),
    new Icon(Icons.notifications),
    // new Icon(Icons.zoom_out),
    // new Icon(Icons.youtube_searched_for),
    // new Icon(Icons.wifi_tethering),
    // new Icon(Icons.wifi_lock),
    // new Icon(Icons.widgets),
    // new Icon(Icons.weekend),
    // new Icon(Icons.web),
    // new Icon(Icons.accessible),
    // new Icon(Icons.ac_unit),
  ];

  Widget buildListData(BuildContext context, String strItem, Icon iconItem) {
    return new ListTile(
      isThreeLine: false,
      leading: iconItem,
      title: new Text(strItem),
      trailing: new Icon(Icons.keyboard_arrow_right),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return new AlertDialog(
            //   title: new Text(
            //     'ListViewDemo',
            //     style: new TextStyle(
            //       color: Colors.black54,
            //       fontSize: 18.0,
            //     ),
            //   ),
            //   content: new Text('您选择的item内容为:$strItem'),
            // );
            return TransDetailPage();
          },
        );
      },
    );
  }

  List<Widget> _list = new List();

  @override
  Widget build(BuildContext context) {
    Widget redDivider = Divider(color: Colors.red);
    Widget blueDivider = Divider(color: Colors.blue);
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        // body: new Center(child:new Text("消息")),
        body: Scrollbar(
          child: Center(
              child: ListView.separated(
            itemCount: strItems.length,
            separatorBuilder: (BuildContext context, int index) {
              return index % 2 == 0 ? redDivider : blueDivider;
            },
            itemBuilder: (BuildContext context, int index) {
              //return ListTile(trailing: new Icon(Icons.keyboard_arrow_right),title: Text("我是列表$index"),);
              return buildListData(context, strItems[index], iconItems[index]);
            },
          )),
        ),
      ),
    );
  }
}
