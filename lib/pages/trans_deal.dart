import 'package:flutter/material.dart';

class TransDetailPage extends StatelessWidget {
  var msgContent= new TextEditingController();



  @override
  Widget build(BuildContext context) {
    msgContent.text="<xml>初始值</xml>";
    return Scaffold(
      appBar: AppBar(
        title: Text("交易"),
        leading: BackButton(),
      ),
      body: TextField(
        decoration: InputDecoration(),
        minLines : 1,
        controller: msgContent,
      ),
     
    );
    
  }
  
}
