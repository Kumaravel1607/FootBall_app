//import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:football/Constant/color.dart';
//import 'package:football/NavScreens/Booking.dart';
//import 'package:football/NavScreens/Football.dart';
import 'package:football/NavScreens/Home.dart';
import 'package:football/NavScreens/Profile.dart';
import 'package:football/NavScreens/Sell.dart';
import 'package:football/Tickets/Ticket.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      backgroundColor: greylite.withOpacity(0.6),
      confineInSafeArea: true,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
          animateTabTransition: true),
      navBarStyle: NavBarStyle.style7,
    );
  }
}

List<PersistentBottomNavBarItem> _navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Container(
        width: 30,
        height: 30,
        child: SvgPicture.asset(
          "assets/images/home.svg",
          color: red,
        ),
      ),
      title: ('Home'),
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      inactiveIcon: Container(
        width: 30,
        height: 30,
        child: SvgPicture.asset(
          "assets/images/home.svg",
          color: black,
        ),
      ),
      //inactiveColorSecondary: red,
      activeColorPrimary: white,
      activeColorSecondary: red,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: Container(
        width: 30,
        height: 30,
        child: SvgPicture.asset(
          "assets/images/ticket1.svg",
          color: red,
        ),
      ),
      inactiveIcon: Container(
        width: 30,
        height: 30,
        child: SvgPicture.asset(
          "assets/images/ticket1.svg",
          color: black,
        ),
      ),
      title: ('Ticket'),
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      activeColorPrimary: white,
      activeColorSecondary: red,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: Container(
        width: 30,
        height: 30,
        child: SvgPicture.asset(
          "assets/images/swap.svg",
          color: red,
        ),
      ),
      inactiveIcon: Container(
        width: 30,
        height: 30,
        child: SvgPicture.asset(
          "assets/images/swap.svg",
          color: black,
        ),
      ),
      title: ('Sell'),
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      activeColorPrimary: white,
      activeColorSecondary: red,
      inactiveColorPrimary: Colors.white,
    ),
    // PersistentBottomNavBarItem(
    //   icon: Container(
    //     width: 30,
    //     height: 30,
    //     child: SvgPicture.asset(
    //       "assets/images/clip.svg",
    //       color: red,
    //     ),
    //   ),
    //   inactiveIcon: Container(
    //     width: 30,
    //     height: 30,
    //     child: SvgPicture.asset(
    //       "assets/images/clip.svg",
    //       //color: black,
    //     ),
    //   ),
    //   title: ('Booking'),
    //   textStyle: TextStyle(
    //     fontSize: 12,
    //     fontWeight: FontWeight.bold,
    //   ),
    //   activeColorPrimary: white,
    //   activeColorSecondary: red,
    //   inactiveColorPrimary: Colors.white,
    // ),

    PersistentBottomNavBarItem(
      // icon: const Icon(
      //   Icons.lock,
      //   color: Blue,
      // ),
      // icon: SvgPicture.asset(
      //   'assets/images/ticket.svg',
      //   width: 10,
      //   color: Colors.white,
      // ),
      icon: Container(
        width: 30,
        height: 30,
        child: SvgPicture.asset(
          "assets/images/profile.svg",
          color: red,
        ),
      ),
      inactiveIcon: Container(
        width: 30,
        height: 30,
        child: SvgPicture.asset(
          "assets/images/profile.svg",
          color: black,
        ),
      ),
      title: ('Profile'),
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      activeColorPrimary: white,
      activeColorSecondary: red,
      inactiveColorPrimary: Colors.white,
    ),
  ];
}

List<Widget> _buildScreens() {
  return [
    Home_page(),
    Ticket(),
    Sell_page(),
    // Booking_page(),

    Profile_page(),
    // Home(), History_list(), Student_list(), Password()
  ];
}
// class _NavigationState extends State<Navigation>
//     with SingleTickerProviderStateMixin {
//   int _tabIndex = 0;
//   int get tabIndex => _tabIndex;
//   set tabIndex(int v) {
//     _tabIndex = v;
//     setState(() {});
//   }

//   PageController? pageController;

//   @override
//   void initState() {
//     super.initState();
//     pageController = PageController(initialPage: _tabIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       bottomNavigationBar: CircleNavBar(
//         activeIcons: [
//           Padding(
//             padding: const EdgeInsets.all(5),
//             child: SvgPicture.asset(
//               'assets/images/home.svg',
//               width: 10,
//               color: Colors.white,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: SvgPicture.asset(
//               'assets/images/ticket.svg',
//               width: 10,
//               color: Colors.white,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: SvgPicture.asset(
//               'assets/images/swap.svg',
//               width: 10,
//               color: Colors.white,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: SvgPicture.asset(
//               'assets/images/lists.svg',
//               width: 10,
//               color: Colors.white,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(5),
//             child: SvgPicture.asset(
//               'assets/images/profile.svg',
//               width: 10,
//               color: Colors.white,
//             ),
//           ),
//         ],
//         inactiveIcons: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               SvgPicture.asset(
//                 'assets/images/home.svg',
//                 color: Colors.white,
//               ),
//               Text(
//                 'Home',
//                 style: TextStyle(color: white),
//               )
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               SvgPicture.asset(
//                 'assets/images/ticket.svg',
                
//                 color: Colors.white,
//               ),
//               Text(
//                 'Football',
//                 style: TextStyle(color: white),
//               )
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               SvgPicture.asset(
//                 'assets/images/swap.svg',
//                 color: Colors.white,
//               ),
//               Text(
//                 'Search',
//                 style: TextStyle(color: white),
//               )
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               SvgPicture.asset(
//                 'assets/images/lists.svg',
//                 color: Colors.white,
//               ),
//               Text(
//                 'History',
//                 style: TextStyle(color: white),
//               )
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               SvgPicture.asset(
//                 'assets/images/profile.svg',
//                 color: Colors.white,
//               ),
//               Text(
//                 'Profile',
//                 style: TextStyle(color: white),
//               )
//             ],
//           ),
//         ],
//         color: Blue_bottom,
//         height: 60,
//         circleWidth: 45,
//         activeIndex: tabIndex,

//         onTap: (index) {
//           tabIndex = index;
//           pageController!.jumpToPage(tabIndex);
//         },
//         padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
//         cornerRadius: const BorderRadius.only(
//           topLeft: Radius.circular(10),
//           topRight: Radius.circular(10),
//           bottomRight: Radius.circular(24),
//           bottomLeft: Radius.circular(24),
//         ),
//         //shadowColor: Colors.deepPurple,
//         // elevation: 10,
//       ),
//       body: PageView(
//         controller: pageController,
//         onPageChanged: (v) {
//           tabIndex = v;
//         },
//         children: [
//           Home_page(),
//           Football_page(),
//           Booking_page(),
//           Sell_page(),
//           Profile_page(),
//         ],
//       ),
//     );
//   }
// }
