import 'package:cashpay/startupscreens/startuppage.dart';
import 'package:flutter/material.dart';
import 'common/theme/app_theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(
    ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: AppTheme.lightTheme, // Apply the light theme
          darkTheme: AppTheme.darkTheme, // Apply the dark theme
          themeMode: ThemeMode
              .system, // Automatically switch between light and dark theme
          debugShowCheckedModeBanner: false,
          title: "Cash Pay",
          home: const StartUpPage(),
        );
      },  
    ),
  );
}

class CashPay extends StatefulWidget {
  @override
  const CashPay({super.key});

  @override
  State<StatefulWidget> createState() {
    return CashPayState();
  }
}

class CashPayState extends State<CashPay> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}