import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
   OTPScreen({Key? key}) : super(key: key);

  // Define your text constants
  static const String tOtpTitle = "Enter OTP";
  static const String tOtpSubTitle = "Please enter the verification code";
  static const String tOtpMessage = "For support, email us at support@codingwitht.com";
  static const String tNext = "Next";

  // Define a value for tDefaultSize (replace with your desired padding)
  static const double tDefaultSize = 20.0;

  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(tOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 40.0),
            const Text(tOtpMessage, textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            TextField(
              controller: otpController, // Controller for OTP input
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter OTP',
              ),
              onSubmitted: (code) {
                print("OTP is => $code");
                // Handle OTP submission here
                // You can use code for further processing
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle the "Next" button click
                  String otp = otpController.text;
                  print("OTP is => $otp");
                  // Add code to process the OTP as needed
                },
                child: Text(tNext),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
