import 'package:cashpay/subscribe/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../common/widgets/custom_buttons.dart';

class VerifyCode extends StatefulWidget {
  @override
  const VerifyCode({super.key});

  @override
  State<StatefulWidget> createState() {
    return VerifyCodeState();
  }
}

class VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
        children: [
          Text(
            "OTP\nVerify!",
            style: theme.textTheme.titleMedium?.copyWith(
              fontSize: 15,
              color: const Color(0xFF08034E),
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "Enter 4-digit code we have sent to",
            textAlign: TextAlign.left,
            style: theme.textTheme.bodySmall
                ?.copyWith(fontSize: 10, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "+233 345 5675",
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall
                    ?.copyWith(color: theme.primaryColor, fontSize: 10),
              ),
              SizedBox(
                width: 0.8.w,
              ),
              Icon(
                Icons.edit_rounded,
                size: 10,
                color: theme.primaryColor,
              )
            ],
          ),
          SizedBox(
            height: 18.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCodeNumberBox('5'),
                buildCodeNumberBox('2'),
                buildCodeNumberBox('3'),
                buildCodeNumberBox('4'),
              ],
            ),
          ),
          Text(
            "This session will end in 60 seconds.",
            textAlign: TextAlign.left,
            style: theme.textTheme.labelMedium?.copyWith(fontSize: 10),
          ),
          SizedBox(
            height: 1.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text.rich(TextSpan(
                text: "Didn't get code?",
                style: theme.textTheme.labelMedium?.copyWith(fontSize: 10),
                children: [
                  WidgetSpan(
                      child: SizedBox(
                    width: 2.w,
                  )),
                  TextSpan(
                      text: 'Resend codde',
                      style: theme.textTheme.labelMedium
                          ?.copyWith(color: theme.primaryColor, fontSize: 10))
                ])),
          ),
          SizedBox(
            height: 15.h,
          ),
          //Submit Button
          Button(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
              shadowColor: Colors.black87,
              borderRadius: 10,
              color: const Color(0xFF08034E),
              buttonText: 'Continue',),
        ],
      ),
    );
  }

  buildCodeNumberBox(String number) {
    var theme = Theme.of(context);
    return Container(
      height: 7.h,
      width: 18.w,
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(hintText: number)
              .applyDefaults(theme.inputDecorationTheme.copyWith(
            hintStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ))),
     );
  }
}
