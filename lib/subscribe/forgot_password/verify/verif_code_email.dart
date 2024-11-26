import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../common/widgets/custom_buttons.dart';
import '../new_password.dart';

class VerifyCodeEmail extends StatefulWidget {
  @override
  const VerifyCodeEmail({super.key});

  @override
  State<StatefulWidget> createState() {
    return VerifyCodeEmailState();
  }
}

class VerifyCodeEmailState extends State<VerifyCodeEmail> {
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
                "Code has been sent to john****@gmail.com",
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
               onTap: () {
                Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => const NewPassword()));
               },
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
