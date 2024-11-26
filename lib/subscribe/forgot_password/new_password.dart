import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../common/widgets/custom_buttons.dart';

class NewPassword extends StatefulWidget {
  @override
  const NewPassword({super.key});

  @override
  State<StatefulWidget> createState() {
    return NewPasswordState();
  }
}

class NewPasswordState extends State<NewPassword> {
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
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
            child: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              behavior: HitTestBehavior.translucent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                 Text(
                    "Create a new password",
                    style: theme.textTheme.bodySmall,
                    softWrap: true,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  // FormField...
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Email
                      Text(
                        "New password",
                        style: theme.textTheme.labelSmall,
                      ),  SizedBox(
                    height: .5.h,
                  ),
                      TextFormField(
                        decoration: const InputDecoration(
                                hintText: 'Enter Password',
                                suffixIcon: Icon(Icons.visibility))
                            .applyDefaults(theme.inputDecorationTheme),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      // Password
                      Text(
                        "Confirm Password",
                        style: theme.textTheme.labelSmall,
                      ),  SizedBox(
                    height: .5.h,
                  ),
                      TextFormField(
                        decoration: const InputDecoration(
                                hintText: 'confirm Password',
                                suffixIcon: Icon(Icons.visibility))
                            .applyDefaults(theme.inputDecorationTheme),
                        obscureText: true,
                      ),
                      // FormField End
                      SizedBox(
                        height: 1.h,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        horizontalTitleGap: 0,
                        leading: Checkbox(
                          activeColor: theme.primaryColor,
                          // tileColor: Colors.white,
                          value: false,
                          onChanged: (value) {},
                        ),
                        title: Text('Remember me',
                            style: theme.textTheme.labelMedium),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  //Submit Button
                  Button(
                      onTap: () {},
                      borderRadius: 10,
                      color: theme.primaryColor,
                      //  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20.w),
                      buttonText: 'Confirm'),

                 ],
              ),
            ),
          ),
        )
    );
  }
}
