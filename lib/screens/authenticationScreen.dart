import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsappclone/widget/country_picker.dart';
import 'package:whatsappclone/widget/custom_button.dart';

class PhoneAuthenticationScreen extends StatefulWidget {
  @override
  _PhoneAuthenticationScreenState createState() =>
      _PhoneAuthenticationScreenState();
}

class _PhoneAuthenticationScreenState extends State<PhoneAuthenticationScreen> {
  final _contactEditingController = TextEditingController();
  var _dialCode = '';

  //Login click with contact number validation
  Future<void> clickOnLogin(BuildContext context) async {
    if (_contactEditingController.text.isEmpty) {
      showErrorDialog(context, 'Contact number can\'t be empty.');
    } else {
      final responseMessage =
      await Navigator.pushNamed(context, '/otpScreen', arguments: '$_dialCode${_contactEditingController.text}');
      if (responseMessage != null) {
        showErrorDialog(context, responseMessage as String);

    }
    print('ok');
    }
  }

  //callback function of country picker
  void _callBackFunction(String name, String dialCode, String flag) {
    _dialCode = dialCode;
  }

  //Alert dialogue to show error and response
  void showErrorDialog(BuildContext context, String message) {
    // set up the AlertDialog
    final CupertinoAlertDialog alert = CupertinoAlertDialog(
      title: const Text('Error'),
      content: Text('\n$message'),
      actions: <Widget>[
        CupertinoDialogAction(
          isDefaultAction: true,
          child: const Text('Yes'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Enter Your phone number',
          style: TextStyle(color: Colors.green),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                'WhatApp will send an SMS message to verify your phone number.',
                style: TextStyle(color: Colors.black87),
                /*defining default style is optional */
                children: <TextSpan>[
                  TextSpan(
                      text: "What's my number?",
                      style: TextStyle(color: Colors.blueAccent)),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            // // Container(
            // //     child: IntlPhoneField(
            // //   initialCountryCode: 'PK',
            // //   onChanged: (phone) {},
            // // )),
            // SizedBox(
            //   height: 10,
            // ),
            // Text(
            //   'Carrier SMS charges may apply',
            //   textAlign: TextAlign.center,
            // ),
            // SizedBox(
            //   height: 100,
            // ),
            // RaisedButton(
            //   onPressed: () {},
            //   color: Colors.green,
            //   child: Text(
            //     'Submit',
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CountryPicker(
                        callBackFunction: _callBackFunction,
                        headerText: 'Select Country',
                        headerBackgroundColor: Theme.of(context).primaryColor,
                        headerTextColor: Colors.white,
                      ),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Contact Number',
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 13.5),
                          ),
                          controller: _contactEditingController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(10)],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(clickOnLogin),
              ],
            )

          ]),
        ),
      ),
    );
  }
}
