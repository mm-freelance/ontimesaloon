// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:salon/pages/home.dart';

import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/otp_text_box.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({super.key});

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.appbackgroundColor,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipPath(
                  clipper: SinCosineWaveClipper(),
                  // borderRadius: const BorderRadius.vertical(bottom: Radius.elliptical(340, 180)),

                  child: Container(
                    width: double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage('assets/onboarding3.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: Text(
                      'Enter the 4-digit code\nsent to Your Number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.6,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),

                Form(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OtpBox(),
                        OtpBox(),
                        OtpBox(),
                        OtpBox(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: 'Not receive code yet? ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Resend',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlueAccent),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.all(28),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(12),
                //   ),
                //   child: Column(children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         _textFieldOTP(first: true, last: false),
                //         _textFieldOTP(first: false, last: false),
                //         _textFieldOTP(first: false, last: false),
                //         _textFieldOTP(first: false, last: true),
                //       ],
                //     ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () => _showDecoratedAlert(context),

                  // onTap: () {
                  //   Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const HomePage(),
                  //     ),
                  //   );
                  // },
                  child: Container(
                    // // padding: const EdgeInsets.all(32),
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Center(
                        child: Text(
                      'SEND OTP',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

void _showDecoratedAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 11, 70),
        icon: const Icon(
          Icons.check_circle_rounded,
          size: 60,
          color: Colors.white,
        ),
        title: const Text(
          'Successfully your\naccount done',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: const Text(
          'Successfully create your account\nnow enjoy our app',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16.0,
          ),
        ),
        actions: <Widget>[
          ButtonBar(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );

                  //  Navigator.pushReplacement(
                  //             context,
                  //             MaterialPageRoute(
                  //               builder: (context) =>
                  //                   const HomePage(),
                  //             ),
                  //           );// Dismiss the dialog
                  // Navigate back to the previous screen (HomeScreen)
                  // Navigator.of(context).pop(); // Dismiss the dialog
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: const EdgeInsets.all(0),
                  width: 300,
                  height: 48,
                  padding: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text(
                      'OK',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 0, 11, 70),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // ElevatedButton(

          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.blue,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          //   ),
          //   onPressed: () {
          // Navigator.of(context).pop(); // Dismiss the dialog
          // Navigator.of(context)
          //     .pop(); // Navigate back to the previous screen (HomeScreen)
          //   },
          //   child: const Text('OK'),
          // ),
        ],
      );
    },
  );
}
