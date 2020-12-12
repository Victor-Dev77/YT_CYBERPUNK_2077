import 'package:cyberpunk/screens/signup_page.dart';
import 'package:cyberpunk/styles/colors.dart';
import 'package:cyberpunk/widgets/beveled_button.dart';
import 'package:cyberpunk/widgets/button_with_underscore.dart';
import 'package:cyberpunk/widgets/information.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      backgroundColor: ThemeColor.darkBlue,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(flex: 2, child: _buildHeader()),
          Expanded(child: _buildContent()),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: ThemeColor.lightYellow,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Image.asset(
              "assets/logo.png",
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 350),
              //color: Colors.red,
              child: Image.asset(
                "assets/man.png",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      color: ThemeColor.darkBlue,
      child: Column(
        children: <Widget>[
          Information(
            text: "Wake up samourai,\nwe got a city to burn _",
          ),
          _buildBtn(),
        ],
      ),
    );
  }

  Widget _buildBtn() {
    return Padding(
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(color: ThemeColor.lightBlue)),
                  child: Center(
                    child: Text(
                      "Log in",
                      style:
                          TextStyle(color: ThemeColor.lightBlue, fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: BeveledButton(
                        icon: FontAwesomeIcons.google,
                      ),
                    ),
                    Expanded(
                      child: BeveledButton(
                        icon: FontAwesomeIcons.facebookF,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(12)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          ButtonWithUnderscore(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => SignUpPage())),
            text: "Sign up",
          ),
        ],
      ),
    );
  }
}
