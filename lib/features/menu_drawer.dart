import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon/features/book_mark.dart';
import 'package:salon/pages_usermanagement/login_page.dart';

import 'package:salon/utils/colors.dart';
import 'package:salon/utils/shared_prefrences_helper.dart';

class MenuNavBar extends StatelessWidget {
  const MenuNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.appbackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 140,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide.none),
                color: Colors.white,
              ),
              child: Row(children: [
                ClipRRect(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                          image: ExactAssetImage('assets/onboarding1.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 70,
                  width: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kesav',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppColors.appbackgroundColor),
                      ),
                      Text(
                        '+91 85259  05774',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: AppColors.appbackgroundColor),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.calendar_month_rounded,
              color: Colors.white,
            ),
            title: const Text(
              'Appointment',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.payment,
              color: Colors.white,
            ),
            title: const Text(
              'Payment',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            title: const Text(
              'Notification',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            title: const Text(
              'Bookmark',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookMarkPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.history,
              color: Colors.white,
            ),
            title: const Text(
              'History',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: const Text(
              'Sign Out',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              _showDecoratedAlert(context);
            },
          ),
        ],
      ),
    );
  }

  void _showDecoratedAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: const Color.fromARGB(
        200,
        0,
        11,
        70,
      ),
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 11, 70),
          icon: const Icon(
            Icons.check_circle_rounded,
            size: 60,
            color: Colors.white,
          ),
          title: const Text(
            'Are You Sure?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const Text(
            'You want to sing out?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16.0,
            ),
          ),
          // actions: <Widget>[
          //   ButtonBar(
          //     children: <Widget>[
          //       GestureDetector(
          //         onTap: () {
          //           SharedPrefs.clearData();
          //         },
          //         child: Container(
          //           decoration: const BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.all(Radius.circular(5))),
          //           margin: const EdgeInsets.all(0),
          //           width: 50,
          //           height: 48,
          //           padding: const EdgeInsets.all(10),
          //           child: const Center(
          //             child: Text(
          //               'OK',
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 16,
          //                 color: Color.fromARGB(255, 0, 11, 70),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //
          //
          //
          //     ],
          //   ),ButtonBar(
          //     children: <Widget>[
          //       GestureDetector(
          //         onTap: () {
          //           Navigator.pop(context);
          //         },
          //         child: Container(
          //           decoration: const BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.all(Radius.circular(5))),
          //           margin: const EdgeInsets.all(0),
          //           width: 50,
          //           height: 48,
          //           padding: const EdgeInsets.all(10),
          //           child: const Center(
          //             child: Text(
          //               'Cancle',
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 16,
          //                 color: Color.fromARGB(255, 0, 11, 70),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //
          //
          //
          //     ],
          //   ),
          // ],
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        'Cancle',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 11, 70),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await SharedPrefs.clearData();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                        result: true);

                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        'OK',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 11, 70),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
