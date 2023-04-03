import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class readotp extends StatefulWidget {
  final signature;
   readotp(this.signature) ;

  @override
  State<readotp> createState() => _readotpState();
}

class _readotpState extends State<readotp> {
  @override
  void initState() {
    widget.signature;
    // TODO: implement initState
    super.initState();
    _listOPT();
  }

  _listOPT()
  async {
    await SmsAutoFill().listenForCode;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.signature.toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
      ),
     body: Center(
       child: PinFieldAutoFill(
         decoration: UnderlineDecoration(
           textStyle: TextStyle(fontSize: 20, color: Colors.black),
           colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
         ),
         codeLength: 4,
         onCodeSubmitted: (code) {},
         onCodeChanged: (code) {
           if (code.length == 6) {
             FocusScope.of(context).requestFocus(FocusNode());
           }
         },
       ),
     ),
    );
  }
}

