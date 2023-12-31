import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geeclass/data/home_data.dart';
import 'package:geeclass/ui/theme/app_color.dart';
import 'package:geeclass/ui/views/subject_view.dart';
import 'package:geeclass/ui/widgets/app_icon_buttton.dart';
import 'package:geeclass/ui/widgets/assignment_week.dart';
import 'package:geeclass/ui/widgets/subject_item.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../Screens/Login/login_screen.dart';
import '../../Screens/base_screen.dart';
import '../../Screens/front page/sp.dart';
import '../../Screens/home_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(elevation: 0, backgroundColor: Color(0xFF6F35A5), actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Clickable icon
                AppIconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/schedule.svg",
                    width: 24,
                    height: 24,
                    color: AppColor.black,
                  ),
                  onTap: () {},
                ),
                const SizedBox(width: 12),
                AppIconButton(
                  icon: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/notification-fill.svg",
                        width: 24,
                        height: 24,
                        color: AppColor.black,
                      ),
                      Positioned(
                        right: 2,
                        top: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            border: Border.all(
                              color: Theme.of(context).canvasColor,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(360),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                const SizedBox(width: 12),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: Image.asset(
                      "assets/images/user.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF6F35A5),
                    // backgroundColor: kPrimaryLightColor, elevation: 0),
                  ),
                  // ignore: unnecessary_const
                  child: const Text(
                    'Menu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text('Home'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const MobileWelcom();
                                },
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: const Text('Classes'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomeView();
                                },
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: const Text('Video call'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomeScreen();
                                },
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: const Text('Smart Attendance'),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Text('Mid-Term Marks'),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Text('E-learning'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const BaseScreen();
                                },
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: const Text('Log out'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const LoginScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBarModalBottomSheet(
              context: context,
              animationCurve: Curves.easeInOut,
              backgroundColor: Theme.of(context).canvasColor,
              bounce: true,
              enableDrag: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              )),
              builder: (ctx) => Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Join Class",
                        style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter your class code",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 24, 25, 27).withOpacity(
                              0.75,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: AppColor.dark,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(360),
                                child: Image.asset(
                                  "assets/images/user.png",
                                  width: 32,
                                  height: 32,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Admin",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "admin@gmail.com",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          AppIconButton(
                            icon: Icon(
                              Icons.chevron_right,
                              color: AppColor.grey.withOpacity(0.75),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        elevation: 0,
                        highlightElevation: 0,
                        splashColor:
                            Theme.of(context).canvasColor.withOpacity(0.15),
                        highlightColor:
                            Theme.of(context).canvasColor.withOpacity(0.25),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 16,
                        ),
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Join Class",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          // Do something & close modal
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          backgroundColor: Theme.of(context).primaryColor,
          splashColor: const Color.fromARGB(255, 21, 21, 21).withOpacity(0.35),
          child: const Icon(
            Icons.add,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // const SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColor.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Hello ",
                            style: TextStyle(
                              // color: AppColor.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: "user ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text: "👋🏼",
                              style: TextStyle(
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Text(
                        "Never underestimate yourself, you've came this far",
                        style: TextStyle(
                          color: AppColor.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "This week",
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: const [
                      Expanded(
                        child: AssignmentWeek(
                          count: 2,
                          subjects: ["FLAT,JAVA"],
                          type: AssignmentType.assigned,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: AssignmentWeek(
                          count: 2,
                          subjects: ["DBMS,SE"],
                          type: AssignmentType.missed,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: subjects.length,
                  itemBuilder: (ctx, index) {
                    final subject = subjects[index];

                    // Subject Item
                    return GestureDetector(
                      onTap: () {
                        // Navigate to subject view
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => SubjectView(subject: subject),
                          ),
                        );
                      },
                      child: SubjectItem(subject: subject),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
