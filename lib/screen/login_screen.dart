import 'package:flutter/material.dart';
import 'package:techcoder_real_easte/screen/dashboard_screen.dart';
import '../components/submit_components.dart';
import '../components/text_box_widget.dart';
import '../utils/text_style.dart';
import 'signup_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SizedBox(
        height: 100,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUpPage()),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Don't have an account ?",
                style: secondaryTextStyle(),
              ),
              Text(
                "Sign Up?",
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
              SizedBox(height: 60),
              Text("Sign In", style: boldTextStyle()),
              Text("Welcome back you've been missed",
                  style: primaryTextStyle()),
              SizedBox(height: 20),
              Text("Email ID", style: boldTextStyle()),
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
              SizedBox(height: 40),
              SubmitComponents(
                  textContent: "Log In",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardPage()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
