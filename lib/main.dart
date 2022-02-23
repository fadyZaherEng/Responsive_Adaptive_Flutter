// ignore_for_file: empty_catches, avoid_print

import 'dart:io';
import 'package:hexcolor/hexcolor.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_flutter/phone_screen/login_screen_phone.dart';
import 'package:responsive_adaptive_flutter/windows_web_screen/login_screen_windows_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  try {
    if (Platform.isWindows ||
        Platform.isAndroid ||
        Platform.isLinux ||
        Platform.isFuchsia ||
        Platform.isIOS ||
        Platform.isMacOS) {
      await DesktopWindow.setMinWindowSize(const Size(300.0, 650.0));
    }
  } catch (e) {
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive_Adaptive',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: Colors.teal,
        primaryColorLight: Colors.teal,
        textTheme: TextTheme(
          bodyText1:  TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color:HexColor('#38B090'),
          ),
        )
      ),
      home: ScreenTypeLayout(
        breakpoints: const ScreenBreakpoints(tablet: 450, desktop: 600, watch: 300),
        mobile: OrientationLayoutBuilder(
          portrait: (context) => LogInPhoneScreen(),
          landscape: (context) =>  LogInPhoneScreen(),
        ),
        tablet:  LogInPhoneScreen(),
        desktop: LogInWindowsWepScreen(),
        watch: Container(color: Colors.purple),
      ),
    );
  }
}


