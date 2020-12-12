import 'package:cyberpunk/styles/colors.dart';
import 'package:cyberpunk/widgets/button_with_underscore.dart';
import 'package:cyberpunk/widgets/information.dart';
import 'package:cyberpunk/widgets/my_textfield.dart';
import 'package:cyberpunk/widgets/separator_painter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
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
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(child: _buildHeader()),
              Expanded(flex: 4, child: _buildContent()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: ThemeColor.lightYellow,
      child: CustomPaint(
        painter: SeparatorPainter(color: ThemeColor.darkBlue),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Image.asset(
            "assets/logo.png",
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      color: ThemeColor.darkBlue,
      child: Column(
        children: <Widget>[
          Information(
            text: "We need your informations\nto continue _",
          ),
          Expanded(child: buildForm()),
        ],
      ),
    );
  }

  Widget buildForm() {
    return Padding(
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                MyTextField(
                  hintText: "Username",
                  icon: FontAwesomeIcons.user,
                ),
                SizedBox(height: 10),
                MyTextField(
                  hintText: "Email address",
                  icon: FontAwesomeIcons.at,
                ),
                SizedBox(height: 10),
                MyTextField(
                  hintText: "Password",
                  icon: FontAwesomeIcons.key,
                ),
                SizedBox(height: 10),
                MyTextField(
                  hintText: "Confirm password",
                  showIcon: false,
                ),
              ],
            ),
          ),
          Spacer(),
          ButtonWithUnderscore(
            onTap: () => print("click"),
            text: "Enter Night City",
          ),
        ],
      ),
    );
  }
}
