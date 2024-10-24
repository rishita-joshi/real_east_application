import 'package:flutter/material.dart';
import 'package:techcoder_real_easte/components/submit_components.dart';
import 'package:techcoder_real_easte/screen/dashboard_screen.dart';
import 'package:techcoder_real_easte/utils/text_style.dart';

import '../components/text_box_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DashboardPage()),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Already have an account ?",
                style: secondaryTextStyle(),
              ),
              Text(
                "Sign In?",
                style: boldTextStyle(),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 50),
              Text("Sign UP", style: boldTextStyle()),
              Text("Welcome !!", style: primaryTextStyle()),
              SizedBox(height: 20),
              Text("Email Id", style: boldTextStyle()),
              TextBoxWidget(
                hintText: 'Enter Email ID',
                controller: emailController,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              Text("Password", style: boldTextStyle()),
              TextBoxWidget(
                hintText: 'Enter Password',
                controller: passwordController,
                inputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 20),
              Text("Confirm Password", style: boldTextStyle()),
              TextBoxWidget(
                hintText: 'Enter Confirm Password',
                controller: confirmPasswordController,
                inputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 40),
              SubmitComponents(textContent: "Sign Up", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
