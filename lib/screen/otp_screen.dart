import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../utils/themeclass.dart';
import '../components/submit_components.dart';
import '../utils/text_style.dart';

class OtpFillScreen extends StatefulWidget {
  const OtpFillScreen({super.key});

  @override
  State<OtpFillScreen> createState() => _OtpFillScreenState();
}

class _OtpFillScreenState extends State<OtpFillScreen> {
  var msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SubmitComponents(
          textContent: "Verify Phone Number",
          onPressed: () {},
        ),
      ),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 30),
            const SizedBox(height: 20),
            Text('OTP Verifications', style: boldTextStyle()),
            const SizedBox(height: 10),
            Text(
                'Secure your account with a one-time password sent to your registered number.',
                style: primaryTextStyle()),
            const SizedBox(height: 20),
            Pinput(
              controller: msgController,
              length: 6,
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: primaryTextStyle(),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: primaryTextStyle(),
                decoration: BoxDecoration(
                  border: Border.all(color: ThemeClass.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              submittedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: primaryTextStyle(),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              validator: (s) {
                return s == '2222' ? null : '';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
          ],
        ),
      ),
    );
  }
}
