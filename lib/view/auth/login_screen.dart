import 'package:e_commerce_app/constance.dart';
import 'package:e_commerce_app/view/widgets/custom_button_socual.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:e_commerce_app/view/widgets/custom_text_from_filed.dart';
import 'package:e_commerce_app/view/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Text('Title'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Welcom', fontSize: 20, bold: true),
                CustomText(
                    text: 'Sing Up',
                    fontSize: 18,
                    color: primarycolor,
                    bold: true),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
                text: 'Sing in to Continue ',
                fontSize: 14,
                color: Colors.grey,
                bold: false,
                algiment: Alignment.centerLeft),
            SizedBox(
              height: 40,
            ),
            CustomTextFromFaild(
                text: 'Email',
                hint: 'Enter Your Email',
                onsave: (value) {},
                validator: (value) {}),
            SizedBox(
              height: 40,
            ),
            CustomTextFromFaild(
                text: 'Password',
                hint: '********',
                onsave: (value) {},
                validator: (value) {}),
            SizedBox(
              height: 20,
            ),
            CustomText(
                text: 'Forget Password ?',
                fontSize: 14,
                algiment: Alignment.centerRight),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 100,
              alignment: Alignment.center,
              child: CustomButton(
                  text: 'LogIn',
                  color: Colors.black,
                  backgrondcolor: primarycolor,
                  bold: true,
                  fontSize: 16,
                  onpressed: () {}),
            ),
            SizedBox(
              height: 20,
            ),
            CustomSocialButton(
              image: 'assets/googleicon.png',
              name: 'Google',
            ),
            SizedBox(
              height: 30,
            ),
            CustomSocialButton(
              image: 'assets/facebook_icon.png',
              name: 'Facebook',
            ),
          ],
        ),
      ),
    );
  }
}
