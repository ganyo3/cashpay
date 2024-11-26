import 'package:cashpay/activity.dart';
import 'package:cashpay/dashboard.dart';
import 'package:cashpay/profile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'notification.dart';

class HomePage extends StatefulWidget {
  @override
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          Dashboard(),
          NotificationPage(),
          Activity(),
          Profile()
        ],
      ),

      bottomNavigationBar: Container( 
        margin: EdgeInsets.symmetric(
        horizontal: 5.w,
        vertical: 1.h
      ),
        padding: EdgeInsets.symmetric(
        horizontal: 3.w,
        ),      
        decoration: BoxDecoration(
          color:const Color.fromARGB(255, 8, 3, 78),
          borderRadius: BorderRadius.circular(15)),
        child: SalomonBottomBar(          
          backgroundColor: const Color.fromARGB(255, 8, 3, 78),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          selectedColorOpacity: 1,
          itemShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          itemPadding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => _selectedIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              activeIcon: Icon(
                Icons.home_filled,
                size: 20,color: theme.primaryColor,
              ),
              icon: const Icon(
                Icons.roofing,
                size: 20,
              ),
              title: Text(
                "Home",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: theme.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
        
            /// Likes
            SalomonBottomBarItem(
              activeIcon: Icon(
                Icons.notifications_active_rounded,
                size: 20,color: theme.primaryColor,
              ),
              icon: const Icon(
                Icons.notifications,
                size: 20,
              ),
              title: Text(
                "Notification",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: theme.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
        
            /// Search
            SalomonBottomBarItem(
              activeIcon: Icon(
                Icons.account_balance_wallet_rounded,
                size: 20,color: theme.primaryColor,
              ),
              icon: const Icon(Icons.wallet_outlined, size: 20),
              title: Text(
                "Activities",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color:  theme.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
        
            /// Profile
            SalomonBottomBarItem(
              activeIcon: Icon(
                Icons.account_circle,
                size: 20,color: theme.primaryColor,
              ),
              icon: const Icon(
                Icons.person_2_rounded,
                size: 20,
              ),
              title: Text(
                "Profile",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: theme.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),

      //  NavigationBar(
      //   onDestinationSelected: _onItemTapped,
      //   selectedIndex: _selectedIndex,
      //   destinations: const [
      //     NavigationDestination(
      //         icon: Icon(
      //           Icons.home_outlined,
      //         ),
      //         selectedIcon: Icon(Icons.home),
      //         label: ''),
      //     NavigationDestination(
      //         icon: Icon(
      //           Icons.schedule_sharp,
      //         ),
      //         selectedIcon: Icon(Icons.calendar_month),
      //         label: ''),
      //     NavigationDestination(
      //         icon: Icon(
      //           Icons.calendar_month_sharp,
      //         ),
      //         selectedIcon: Icon(Icons.edit_calendar_rounded),
      //         label: ''),
      //     NavigationDestination(
      //         icon: Icon(
      //           Icons.person_4,
      //         ),
      //         selectedIcon: Icon(Icons.account_box_rounded),
      //         label: ''),
      //   ],
      // ),

      // bottomNavigationBar: BottomNavigationBar(
      //   // fixedColor: Colors.white,
      //   // useLegacyColorScheme: false,
      //   backgroundColor: Colors.white,
      //     onTap: _onItemTapped,
      //     currentIndex: _selectedIndex,
      //     items: [
      //       // home
      //       BottomNavigationBarItem(
      //         activeIcon: const Icon(
      //           Icons.home,
      //         ),
      //         label: "",
      //         icon: const Icon(
      //           Icons.home_outlined,
      //         ),
      //       ),
      //       // schedule
      //       BottomNavigationBarItem(
      //         activeIcon: const Icon(
      //           Icons.schedule_sharp,
      //         ),
      //         label: "",
      //         icon: const Icon(
      //           Icons.schedule_sharp,
      //         ),
      //       ),
      //       // chat
      //       BottomNavigationBarItem(
      //         activeIcon: const Icon(
      //           Icons.feedback_outlined,
      //         ),
      //         label: "",
      //         icon: const Icon(
      //           Icons.feedback_outlined,
      //         ),
      //       ),
      //       // account
      //       BottomNavigationBarItem(
      //         activeIcon: const Icon(
      //           Icons.account_circle_outlined,
      //         ),
      //         label: "",
      //         icon: const Icon(
      //           Icons.account_circle_outlined,
      //         ),
      //       ),
      //     ]),
    );
  }
}
