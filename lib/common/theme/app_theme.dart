import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: const Color(0xff169ed9),
      scaffoldBackgroundColor:Colors.white,
      textTheme: textThemeLight,

      //AppBarTheme
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,

        iconTheme: const IconThemeData(
          color: Color(0xff000000),
        ),
        surfaceTintColor: Colors.white,
        // foregroundColor: const Color(0xff000000),
        backgroundColor: Colors.white,
        titleTextStyle: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w900,
          ),
        ).titleLarge,
        actionsIconTheme: IconThemeData(
          size: 20,
          color: AppColors().primary,
        ),
        centerTitle: true,
      ),
      // searchBarTheme
      searchBarTheme: SearchBarThemeData(
        elevation: const WidgetStatePropertyAll(0),
        backgroundColor: WidgetStatePropertyAll(Colors.grey.shade200),
        hintStyle: WidgetStatePropertyAll(
          TextStyle(
            color: Colors.grey.shade400,
          ),
        ),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 3.w, vertical: 0)),
        shape: const WidgetStatePropertyAll(ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)))),
      ),
      //floatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
       backgroundColor: Colors.white,
        foregroundColor:Colors.black,
       extendedTextStyle: TextStyle(
       fontWeight: FontWeight.w900,
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          side: BorderSide(color: Colors.grey)
        ),
       
      ),
      // bottomNavigationBarTheme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black54,
        selectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black54,
        ),
        elevation: 0,
        selectedLabelStyle: TextStyle(
          fontSize: 5,
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        height: 6.5.h,
        elevation: 0,
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((_) {
          // ignore: no_wildcard_variable_uses
          if (_.contains(WidgetState.selected)) {
            return const IconThemeData(
              color: Color(0xff169ed9),
            );
          }
          return const IconThemeData(
            color: Colors.black54,
          );
        }),
        indicatorColor: const Color(0xff169ed9).withOpacity(.15),
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      ),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          // padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 1.5.w)),
          visualDensity: VisualDensity.compact,

          iconColor: WidgetStatePropertyAll(Color(0xff169ed9)),
          // backgroundColor: WidgetStatePropertyAll(Color(0xffD2EBE7)),
          // iconSize: WidgetStatePropertyAll(25),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
        ),
      ),

      // datePickerTheme: DatePickerThemeData(
      //   todayBackgroundColor: WidgetStateProperty.resolveWith<Color>((_) {
      //     if (_.contains(WidgetState.selected)) {
      //       return AppColors().primary;
      //     }
      //     return Colors.transparent;
      //   }),
      //   dayBackgroundColor: WidgetStateProperty.resolveWith<Color>((_) {
      //     if (_.contains(WidgetState.selected)) {
      //       return AppColors().primary;
      //     }
      //     return Colors.transparent;
      //   }),
      //   todayForegroundColor: WidgetStateProperty.resolveWith<Color>((_) {
      //     if (!_.contains(WidgetState.selected)) {
      //       return AppColors().primary;
      //     }
      //     return Colors.white;
      //   }),
      //   todayBorder: BorderSide(color: AppColors().primary),
      // ),

      iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
      //TextFormField
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey.shade200,
        // isDense: true,
        suffixIconColor: Colors.grey.shade400,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none),
        hintStyle:
            textThemeLight.labelMedium?.copyWith(color: Colors.grey.shade500),
        // focusedBorder: const OutlineInputBorder(
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(10),
        //     ),
        //     borderSide: BorderSide(
        //       width: .8,
        //       color: Color(0xffD2EBE7),
        //     )),
      ),
      //ExpansionTile
      // expansionTileTheme: ExpansionTileThemeData(
      //   backgroundColor: Colors.grey.shade200,
      //   collapsedBackgroundColor: Colors.grey.shade200,
      //   expandedAlignment: Alignment.center,
      //   childrenPadding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.8.h),
      //   shape: const ContinuousRectangleBorder(
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(20),
      //     ),
      //   ),
      //   collapsedShape: const ContinuousRectangleBorder(
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(20),
      //     ),
      //   ),
      // ),
      // chipTheme
      chipTheme: ChipThemeData(
        backgroundColor:Colors.grey.shade500,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelPadding: EdgeInsets.zero,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      //buttonTheme
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
      // dropdownMenuTheme
      // dropdownMenuTheme: DropdownMenuThemeData(
      //   menuStyle: MenuStyle(
      //       backgroundColor: WidgetStatePropertyAll(Colors.grey.shade200),
      //       elevation: const WidgetStatePropertyAll(1),
      //       shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
      //         borderRadius: BorderRadius.circular(5),
      //       ))),
      //   inputDecorationTheme: InputDecorationTheme(
      //     hintStyle:
      //         textThemeLight.labelMedium?.copyWith(color: Colors.grey.shade500),
      //     filled: true,
      //     isDense: true,
      //     fillColor: Colors.grey.shade200,
          // enabledBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(10),
          //     borderSide: BorderSide.none),
          // // focusedBorder: const OutlineInputBorder(
          // //     borderRadius: BorderRadius.all(
          // //       Radius.circular(10),
          // //     ),
          //     borderSide: BorderSide(
          //       width: .8,
          //       color: Color(0xffD2EBE7),
          //     )),
      //   ),
      // ),

      //popupMenuTheme
      // popupMenuTheme: PopupMenuThemeData(
      //     elevation: 50.w,
      //     surfaceTintColor: Colors.grey.shade300,
      //     position: PopupMenuPosition.over,
      //     // menuPadding: EdgeInsets.zero,
      //     shape: ContinuousRectangleBorder(
      //         borderRadius: BorderRadius.circular(20),
      //         side: BorderSide(
      //           width: .3.w,
      //           color: const Color(0xff169ed9),
      //         ))),
      //Radio button
      // radioTheme: RadioThemeData(
      //   fillColor:
      //       WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      //     if (states.contains(WidgetState.selected)) {
      //       return const Color(0xff169ed9);
      //     }
      //     return Colors.grey.shade200;
      //   }),
      // ),
      //TextButtonTheme
      textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(
                Color(0xff169ed9),
              ),
              textStyle: WidgetStatePropertyAll(TextStyle(
                fontSize: 15,
              )))),
      //elevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        backgroundColor: const WidgetStatePropertyAll(Colors.white24),
        shape: WidgetStatePropertyAll(
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20))),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 10.w))
      )),
      //CardTheme
      cardColor: const Color(0xffD2EBE7),
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 1.h,
        ),
        elevation: 0,
        color: Colors.white,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            side: BorderSide(
             color: Colors.grey
            )),
      ),

      indicatorColor: Colors.grey.shade400,
      switchTheme: const SwitchThemeData(),
      dialogBackgroundColor: Colors.white,
      primaryColorDark: const Color(0xff000000),
      primaryColorLight: const Color(0xffD2EBE7),

      colorScheme: ColorScheme.light(
          surface: Colors.grey.shade200,
          primary: const Color(0xff0B8FAC),
          primaryContainer: const Color.fromARGB(255, 243, 243, 243),
          secondary: Colors.orange,
          tertiary: Colors.grey.shade500,
          tertiaryContainer: Colors.white,
          inversePrimary: Colors.grey.shade900),
      // ColorScheme.fromSwatch().copyWith(secondary: Colors.orange).copyWith(
      //       surface: Colors.white,
      //     ),

      checkboxTheme: CheckboxThemeData(
          fillColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return const Color(0xff169ed9);
            }
            return Colors.transparent;
          }),
          side: const BorderSide(
            color: Color.fromARGB(255, 2, 55, 67),
            width: 1.5,
          )),
    );
  }

  static TextTheme get textThemeLight {
    return Typography.englishLike2014
        .copyWith(
            // headlineMedium: TextStyle(
            //   fontSize: 20,
            //   fontWeight: FontWeight.w900,
            // ),
            // bodyLarge: TextStyle(
            //   color: Color.fromARGB(255, 255, 255, 255),
            //   fontSize: 45,
            //   fontWeight: FontWeight.bold,
            // ),
            // labelLarge: TextStyle(
            //   color: Color.fromARGB(255, 216, 235, 232),
            //   fontSize: 30,
            //   fontWeight: FontWeight.w600,
            // ),
            // labelMedium: TextStyle(
            //   fontSize: 16,
            //   fontWeight: FontWeight.w600,
            // )
            // bodyMedium: TextStyle(
            //   color: Color(0xff000000),
            //   fontSize: 15,
            //   fontWeight: FontWeight.w900,
            // ),
            // bodySmall: TextStyle(
            //   color: Color(0xff000000),
            //   fontSize: 14,
            //   fontWeight: FontWeight.w900,
            // ),
            )
        .apply(displayColor: Colors.black54, bodyColor: Colors.black87);
  }

  // add a remote repository.....................................................................
  //DarkTheme
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: const Color(0xff169ed9),
      scaffoldBackgroundColor: const Color(0xff000000),
      textTheme: _textThemeDark,
      //AppBarTheme
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xff000000),
        iconTheme: const IconThemeData(color: Color(0xffD2EBE7)),
        foregroundColor: const Color(0xffD2EBE7),
        titleTextStyle: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xffD2EBE7),
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
          ),
        ).titleLarge,
        actionsIconTheme: const IconThemeData(
          size: 28,
          color: Color(0xffD2EBE7),
        ),
        centerTitle: true,
      ),
      // searchBarTheme
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(Color(0xffD2EBE7)),
        hintStyle: WidgetStatePropertyAll(
          TextStyle(
            color: Color(0xff000000),
          ),
        ),
        shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
            side: BorderSide(
              color: Color(0xff7BC1B7),
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)))),
      ),
      //floatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        extendedTextStyle: TextStyle(
          color: Color(0xffD2EBE7),
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80)),
        ),
        extendedPadding: EdgeInsets.symmetric(
          horizontal: 80,
        ),
      ),
      // bottomNavigationBarTheme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        // backgroundColor: Color(0xffD2EBE7),
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Color(0xffD2EBE7),
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 5,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 15,
        ),
      ),
      //iconButtonTheme
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStatePropertyAll(Colors.blue),
          backgroundColor:
              WidgetStatePropertyAll(Color.fromARGB(92, 33, 149, 243)),
          padding: WidgetStatePropertyAll(EdgeInsets.all(5)),
          iconSize: WidgetStatePropertyAll(25),
          shape: WidgetStatePropertyAll(CircleBorder()),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.lightBlue, size: 25.0),
      //TextFormField
      inputDecorationTheme: const InputDecorationTheme(
        suffixIconColor: Colors.white,
        hintStyle: TextStyle(
          color: Colors.white30,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            borderSide: BorderSide(
              color: Colors.white30,
            )),
      ),
      listTileTheme: const ListTileThemeData(
        textColor: Colors.white,
      ),
      // chipTheme
      chipTheme: ChipThemeData(
        backgroundColor: const Color(0xff169ed9),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelPadding: const EdgeInsets.symmetric(horizontal: 15),
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      //buttonTheme
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
      dropdownMenuTheme: const DropdownMenuThemeData(
          textStyle: TextStyle(
        color: Colors.white,
      )),
      //TextButtonTheme
      textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(
                Colors.blue,
              ),
              textStyle: WidgetStatePropertyAll(TextStyle(
                fontSize: 15,
              )))),
      //CardTheme
      cardColor: Colors.white30,
      cardTheme: const CardTheme(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        color: Color(0xff169ed9),
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            side: BorderSide(
              color: Colors.blue,
              // width: 1
            )),
      ),
      dialogBackgroundColor: const Color(0xff000000),
      primaryColorDark: const Color.fromARGB(255, 255, 255, 255),
      colorScheme: ColorScheme.dark(
          surface: Colors.grey.shade900,
          primary: const Color(0xff0B8FAC),
          primaryContainer: Colors.grey.shade800,
          secondary: Colors.orange,
          tertiary: Colors.grey.shade200,
          tertiaryContainer: Colors.grey.shade800,
          inversePrimary: Colors.grey.shade200),
      // ColorScheme.fromSwatch().copyWith(secondary: Colors.orange).copyWith(
      //       surface: Colors.white,
      //     ),
    );
  }

  static TextTheme get _textThemeDark {
    return const TextTheme(
      // displayLarge: TextStyle(),
      // displayMedium: TextStyle(),
      // displaySmall: TextStyle(),
      // titleLarge: TextStyle(),
      // titleMedium: TextStyle(
      //     color: Color(0xffD2EBE7), fontSize: 20, fontWeight: FontWeight.w900),
      // titleSmall: TextStyle(
      //   color: Color(0xffD2EBE7),
      //   fontSize: 14,
      // ),
      // headlineLarge: TextStyle(),
      // headlineMedium: TextStyle(),
      // headlineSmall: TextStyle(),
      labelMedium: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      // bodyLarge: TextStyle(),
      bodyMedium: TextStyle(
        color: Color(0xffD2EBE7),
        fontWeight: FontWeight.w900,
      ),
      // bodySmall: TextStyle(
      //   color: Color(0xffD2EBE7),
      //   fontSize: 14,
      // ),
    );
  }
}

class AppColors {
  Color primary = const Color(0xff169ed9);
  Color secondary = const Color(0xffF7F7F7);
  Color white = const Color(0xFFFFFFFF);
  Color black = const Color(0xFF000000);
  Color dark = const Color(0xFF333333);
  Color light = const Color(0xFFE5E5E5);
  Color gray = const Color(0xFFC4C4C4);
  Color grayDark = const Color(0xFF333333);
  Color grayLight = const Color(0xFFE5E5E5);

  AppColors({
    this.black = const Color(0xff000000),
    this.primary = const Color(0xff169ed9),
    this.white = const Color(0xFFFFFFFF),
    this.dark = const Color(0xFF333333),
    this.light = const Color(0xFFE5E5E5),
    this.gray = const Color(0xFFC4C4C4),
    this.grayDark = const Color(0xFF333333),
    this.grayLight = const Color(0xFFE5E5E5),
  });
}
