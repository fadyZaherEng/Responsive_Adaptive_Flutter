import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_adaptive_flutter/adaptive/components_adaptive.dart';
import 'package:responsive_adaptive_flutter/shared/constants/constants.dart';

logIn({
  required context,
  required nameController,
  required emailController,
  required passwordController,
})=> SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          FittedBox(
            child: Text('Create Account'
              ,style:Theme.of(context).textTheme.bodyText1

            ),
          ),
          const SizedBox(height: 50,),
          AdaptiveTextFormField(
              os:getOs(),
              prefixIcon: getOs() == 'android'?Icons.person:CupertinoIcons.person,
              label: 'Username',
              Controller: nameController
          ),
           const SizedBox(height: 10,),
          AdaptiveTextFormField(
              os:getOs(),
              prefixIcon: getOs() == 'android'?Icons.email:CupertinoIcons.mail,
              label: 'Email',
              Controller: emailController
          ),
          const SizedBox(height: 10,),
          AdaptiveTextFormField(
              os:getOs(),
              prefixIcon: getOs() == 'android'?Icons.lock:CupertinoIcons.lock,
              label: 'Password',
              Controller: passwordController
          ),
          const SizedBox(height: 60,),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius:const BorderRadiusDirectional.all(Radius.circular(20))
              ,color:  HexColor('#38A088'),
            ),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                //show indicator
              },
              child: const Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          AdaptiveSwitch(
              os: getOs(),
              value: true,
              onChanged:(val){
                print(val);
              }),
          const SizedBox(height: 20,),
          AdaptiveIndicator(getOs()),

        ],
      ),
    ),
  ),
);