import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_adaptive_flutter/adaptive/components_adaptive.dart';
import 'package:responsive_adaptive_flutter/shared/components.dart';
import 'package:responsive_adaptive_flutter/shared/constants/constants.dart';

class LogInPhoneScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
        os: getOs(),
        title: const Text(
          'LogInScreen',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Body: logIn(
            context: context,
            nameController: nameController,
            emailController: emailController,
            passwordController: passwordController),
           AppBarBackgroundColor: HexColor('#38A088'));
  }
}
