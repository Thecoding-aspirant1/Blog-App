import 'package:blog_app/constant/constant.dart';
import 'package:blog_app/custom%20widget.dart/form.dart';
import 'package:flutter/material.dart';

class BlogsCreate extends StatefulWidget {
  const BlogsCreate({super.key});

  @override
  State<BlogsCreate> createState() => _BlogsCreateState();
}

class _BlogsCreateState extends State<BlogsCreate> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;

    return SingleChildScrollView(
      child: Container(
        height: h,
        color: Constant().plat,
        child: Center(
            child: Column(
          children: [
            Form(
              child: FormArea(),
              key: GlobalKey(),
            )
          ],
        )),
      ),
    );
  }
}
