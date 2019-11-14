import 'package:flutter/material.dart';
import 'package:contactly/helpers/Constants.dart' as Constants;

class LoginPage extends StatelessWidget {
  final _pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: Constants.bigRadius,
      child: Constants.appLogo,
    );

    final pinCode = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.phone,
      maxLength: 4,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
        hintText: Constants.pinCodeHintText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
          ),
        hintStyle: TextStyle(
          color: Colors.white
        )
      ),

    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Constants.homePageTag);
        },
        padding: EdgeInsets.all(12),
        color: Constants.appGreyColor,
        child: Text(
          Constants.loginButtonText, style: TextStyle(
            color: Colors.white
          )
        )
      )
    );

    return Scaffold(
      backgroundColor: Constants.appDarkGreyColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            logo,
            SizedBox(height: Constants.bigRadius),
            pinCode,
            SizedBox(height: Constants.buttonHeight),
            loginButton
          ],
        )
      )
    );
    
  }
}