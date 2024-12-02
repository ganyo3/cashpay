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
      //AppBar
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,vertical: 6.h
         ),
            children: [
               Text(
                    "OTP\nVerify!",
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                   SizedBox(height: 3.h,),
            Text(
                "Enter 4-digit code we have sent to",
                textAlign: TextAlign.left,
                 style: theme.textTheme.bodySmall
               ?.copyWith(color: Colors.grey,fontSize: 15),
              ),
            Row(
              children: [
                Text(
                    "+233 345 5675",
                    textAlign: TextAlign.left,
                     style: theme.textTheme.bodySmall
                   ?.copyWith(color:theme.primaryColor,fontSize: 15),
                  ),
                   IconButton(onPressed: () {  },
                  icon:Icon(Icons.edit_rounded,size: 15,)),
              ],
            ),
            SizedBox(
              height: 18.h,
              child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                 style: theme.textTheme.labelMedium
               ?.copyWith(fontSize: 15),
              ),
              SizedBox(height: 1.h,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text.rich(
                 TextSpan(
                              text: "Didn't get code?",
                              style: theme.textTheme.labelMedium?.copyWith(fontSize: 15),
                              children: [
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 2.w,
                                )),
                                TextSpan(
                                    text: 'Resend codde',
                                    style: theme.textTheme.labelMedium
                                        ?.copyWith(color: theme.primaryColor,fontSize: 15))
                              ])
                ),
              ),
          SizedBox(height: 15.h,),
        //Submit Button
             Button(
               onTap: () {
                Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => const SignIn()));
               },
               borderRadius: 10,
               color:const Color(0xFF08034E),
               buttonText: 'Continue'),
            ],
      ),
    );
  }
  
  buildCodeNumberBox(String number) {
    var theme = Theme.of(context);
    return Container(
      height: 6.h,
       width: 12.w,
       decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
       child: Center(
        child: Text(number,
         style: theme.textTheme.bodyLarge?.copyWith(
          fontSize: 24, fontWeight: FontWeight.w800,
         ),
        ),
       ),
    );
  }
}
