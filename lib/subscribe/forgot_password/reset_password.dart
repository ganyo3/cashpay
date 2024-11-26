import 'package:flutter/material.dart';
import 'package:cashpay/common/theme/app_theme.dart';
import 'package:cashpay/common/widgets/custom_buttons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'verify/verif_code_email.dart';
import 'verify/verify_code_sms.dart';

class ResetPassword extends StatefulWidget {
 const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => ResetPasswordState();
}

class ResetPasswordState extends State<ResetPassword>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  final DecorationTween decorationTween = DecorationTween(
    begin: ShapeDecoration(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: AppColors().primary)),
    ),
    end: ShapeDecoration(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: AppColors().primary.withOpacity(.3))),
    ),
  );

  @override
  initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        // reverseDuration: Duration(seconds: 1),
        animationBehavior: AnimationBehavior.preserve);
    _animationController
      ..forward()
      ..repeat();
    super.initState();
  }

  int _selectedCardIndex = 0;
  void _selectAppointmentType(int index) {
    setState(() {
      _selectedCardIndex = index; //making changes to selected card
    });
  }

  @override
  void dispose() {
    _animationController.stop();
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 10.h
        ),
       shrinkWrap: true,
         children: [
          Text(
                    "Forgot Password?",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
         Text(
           "Please select the method by which you want to reset your password",
           style: theme.textTheme.bodySmall
               ?.copyWith(color: Colors.grey, fontSize: 11),
         ),
         SizedBox(
           height: 2.5.h,
         ),
                       //Reset Method
         GestureDetector(
           onTap: () => _selectAppointmentType(0),
           child: _selectedCardIndex == 0
               ? DecoratedBoxTransition(
                   decoration:
                       decorationTween.animate(_animationController),
                   child: Card(
                     // color: theme.scaffoldBackgroundColor,
                     color: _selectedCardIndex == 0
                         ? theme.primaryColor
                         : theme.scaffoldBackgroundColor,
                     child: Padding(
                       padding: EdgeInsets.symmetric(
                           horizontal: 3.w, vertical: 2.h),
                       child: Column(
                           mainAxisAlignment:
                               MainAxisAlignment.spaceEvenly,
                           children: [
                             Icon(
                               Icons.email_outlined,
                               color: _selectedCardIndex == 0
                                   ? Colors.white
                                   : theme.primaryColor,
                               // color: theme.primaryColor,
                               size: 25,
                             ),
                             SizedBox(
                               height: 1.5.h,
                             ),
                             Text(
                               "Email",
                               overflow: TextOverflow.ellipsis,
                               style: theme.textTheme.titleMedium
                                   ?.copyWith(
                                       fontWeight: FontWeight.bold,
                                       color: _selectedCardIndex == 0
                                           ? Colors.white
                                           : Colors.black),
                             ),
                             SizedBox(
                               height: 1.h,
                             ),
                             Text(
                               "Receive code through email: john****@gmail.com",
                               style: theme.textTheme.bodySmall
                                   ?.copyWith(
                                       // color: Colors.grey,
                                       color: _selectedCardIndex == 0
                                           ? Colors.white54
                                           : Colors.black45,
                                       fontSize: 13),
                             ),
                             SizedBox(
                               width: 2.5.w,
                             )
                           ]),
                     ),
                   ),
                 )
               : Card(
                   // color: theme.scaffoldBackgroundColor,
                   color: _selectedCardIndex == 0
                       ? theme.primaryColor
                       : theme.scaffoldBackgroundColor,
                   child: Padding(
                     padding: EdgeInsets.symmetric(
                         horizontal: 3.w, vertical: 2.h),
                     child: Column(
                         mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(
                             Icons.email_outlined,
                             color: _selectedCardIndex == 0
                                 ? Colors.white
                                 : theme.primaryColor,
                             // color: theme.primaryColor,
                             size: 25,
                           ),
                           SizedBox(
                             height: 1.5.h,
                           ),
                           Text(
                             "Emai",
                             overflow: TextOverflow.ellipsis,
                             style: theme.textTheme.titleMedium
                                 ?.copyWith(
                                     fontWeight: FontWeight.bold,
                                     color: _selectedCardIndex == 0
                                         ? Colors.white
                                         : Colors.black),
                           ),
                           SizedBox(
                             height: 1.h,
                           ),
                           Text(
                             "Receive code through email: john****@gmail.com",
                             style: theme.textTheme.bodySmall
                                 ?.copyWith(
                                     // color: Colors.grey,
                                     color: _selectedCardIndex == 0
                                         ? Colors.white54
                                         : Colors.black45,
                                     fontSize: 13),
                           ),
                           SizedBox(
                             width: 2.5.w,
                           )
                         ]),
                   ),
                 ),
         ),
         SizedBox(
           height: 2.5.h,
         ),
         GestureDetector(
           onTap: () => _selectAppointmentType(1),
           child: _selectedCardIndex == 1
               ? DecoratedBoxTransition(
                   decoration:
                       decorationTween.animate(_animationController),
                   child: Card(
                     color: _selectedCardIndex == 1
                         ? theme.primaryColor
                         : theme.scaffoldBackgroundColor,
                     // color: theme.primaryColor,
                     child: Padding(
                       padding: EdgeInsets.symmetric(
                           horizontal: 3.w, vertical: 2.h),
                       child: Column(
                           mainAxisAlignment:
                               MainAxisAlignment.spaceEvenly,
                           children: [
                             Icon(
                               Icons.sms_outlined,
                               // color: Colors.white,
                               color: _selectedCardIndex == 1
                                   ? Colors.white
                                   : theme.primaryColor,
                               size: 25,
                             ),
                             SizedBox(
                               height: 1.5.h,
                             ),
                             Text(
                               "SMS",
                               overflow: TextOverflow.ellipsis,
                               style: theme.textTheme.titleMedium
                                   ?.copyWith(
                                 fontWeight: FontWeight.bold,
                                 color: _selectedCardIndex == 1
                                     ? Colors.white
                                     : Colors.black,
                               ),
                             ),
                             SizedBox(
                               height: 1.h,
                             ),
                             Text(
                               "Receive code through sms: +44****5423",
                               style: theme.textTheme.bodySmall
                                   ?.copyWith(
                                       color: _selectedCardIndex == 1
                                           ? Colors.white54
                                           : Colors.black45,
                                       // color: Colors.white54,
                  
                                       fontSize: 13),
                             ),
                             SizedBox(
                               width: 2.5.w,
                             )
                           ]),
                     ),
                   ),
                 )
               : Card(
                   color: _selectedCardIndex == 1
                       ? theme.primaryColor
                       : theme.scaffoldBackgroundColor,
                   // color: theme.primaryColor,
                   child: Padding(
                     padding: EdgeInsets.symmetric(
                         horizontal: 3.w, vertical: 2.h),
                     child: Column(
                         mainAxisAlignment:
                             MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(
                             Icons.sms_outlined,
                             // color: Colors.white,
                             color: _selectedCardIndex == 1
                                 ? Colors.white
                                 : theme.primaryColor,
                             size: 25,
                           ),
                           SizedBox(
                             height: 1.5.h,
                           ),
                           Text(
                             "SMS",
                             overflow: TextOverflow.ellipsis,
                             style: theme.textTheme.titleMedium
                                 ?.copyWith(
                               fontWeight: FontWeight.bold,
                               color: _selectedCardIndex == 1
                                   ? Colors.white
                                   : Colors.black,
                             ),
                           ),
                           SizedBox(
                             height: 1.h,
                           ),
                           Text(
                             "Receive code through sms: +44****5423",
                             style: theme.textTheme.bodySmall
                                 ?.copyWith(
                                     color: _selectedCardIndex == 1
                                         ? Colors.white54
                                         : Colors.black45,
                                     // color: Colors.white54,
                  
                                     fontSize: 13),
                           ),
                           SizedBox(
                             width: 2.5.w,
                           )
                         ]),
                   ),
                 ),
         ),
           SizedBox(height: 15.h,),
           Button(
               onTap: () {
                if(_selectedCardIndex == 0){
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => const VerifyCodeEmail()));
                }else{
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => const VerifyCodeSms()));
                }
               },
               borderRadius: 10,
               color: theme.primaryColor,
               buttonText: 'Next'),
           SizedBox(
             height: 2.h,
           )
         ],
       ),
    );
  }
}
