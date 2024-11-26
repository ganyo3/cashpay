import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../common/widgets/custom_buttons.dart';

class VerifyCodeSms extends StatefulWidget {
  @override
  const VerifyCodeSms({super.key});

  @override
  State<StatefulWidget> createState() {
    return VerifyCodeSmsState();
  }
}

class VerifyCodeSmsState extends State<VerifyCodeSms> {
  @override
  Widget build(BuildContext context) {
   var theme = Theme.of(context);
    return Scaffold(
      //AppBar
      appBar: AppBar(
       title: const Text(
          "Reset Password",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 20.h
        ),
            children: [
            Text(
                "Code has been sent to +44****5423",
                textAlign: TextAlign.center,
                 style: theme.textTheme.bodySmall
               ?.copyWith(color: Colors.grey, fontSize: 15),
              ),
             SizedBox(height: 2.5.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
                buildCodeNumberBox('4'),
                buildCodeNumberBox('8'),
                buildCodeNumberBox('7'),
                buildCodeNumberBox('2'),
                buildCodeNumberBox('0'),
                buildCodeNumberBox('8'),
        ],
      ),
       SizedBox(height: 5.h,),
        //Submit Button
             Button(
               onTap: () {},
               borderRadius: 10,
               color: theme.primaryColor,
               buttonText: 'Verify'),
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
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: theme.primaryColor,
          width: 2,
        ),
       ),
       child: Center(
        child: Text(number,
         style: theme.textTheme.bodyLarge?.copyWith(
          fontSize: 24
         ),
        ),
       ),
    );
  }
}
