import 'package:blog_app/constant/constant.dart';
import 'package:blog_app/screens/crud_blog.dart';
import 'package:blog_app/screens/exploreblog.dart';
import 'package:blog_app/screens/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int current_index = 0;
  List<Widget> list = <Widget>[ExploreBlogs(), BlogsCreate(), Profile()];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constant().plat,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(
                text: 'B',
                children: [
                  TextSpan(
                    text: 'log App',
                    style: GoogleFonts.ubuntu(color: Colors.black),
                  )
                ],
                style: GoogleFonts.ubuntu(
                    color: Constant().pink,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Card(
              color: Constant().plat,
              shape: CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/grid-svgrepo-com.svg')),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: h,
          color: Constant().plat,
          child: list[current_index],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Constant().plat,
          height: h * 0.07,
          buttonBackgroundColor: Colors.pink.shade200,
          animationDuration: Duration(milliseconds: 500),
          onTap: (index) {
            print(index);
            setState(() {
              current_index = index;
              print(current_index);
            });
            setState(() {});
          },
          items: [
            Icon(Icons.home_filled, size: 30, color: Constant().blue),
            Icon(Icons.create_sharp, size: 30, color: Constant().blue),
            Icon(Icons.person, size: 30, color: Constant().blue),
          ]),
    );
  }
}
