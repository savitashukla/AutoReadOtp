/*
import 'package:flutter/cupertino.dart';
import 'package:sms/sms.dart';
import 'package:flutter/material.dart';

class MyInbox extends StatefulWidget{
  @override
  State createState() {
    // TODO: implement createState
    return MyInboxState();
  }

}

class MyInboxState extends State{
  var query = new SmsQuery();
  List messages=[];
  @override
  initState()  {

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("SMS Inbox"),
          backgroundColor: Colors.pink,
        ),
        body: FutureBuilder(
          future: fetchSMS() ,
          builder: (context, snapshot)  {

            return ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.black,
                ),
                itemCount: messages.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.markunread,color: Colors.pink,),
                      title: Text(messages[index].address),
                      subtitle: Text(messages[index].body,maxLines:2,style: TextStyle(),),
                    ),
                  );
                });
          },)
    );
  }

  fetchSMS()
  async {
    messages = await query.getAllSms;
  }
}*/
