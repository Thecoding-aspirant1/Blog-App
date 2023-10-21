import 'package:blog_app/constant/constant.dart';
import 'package:flutter/material.dart';

class FormArea extends StatefulWidget {
  const FormArea({super.key});

  @override
  State<FormArea> createState() => _FormAreaState();
}

class _FormAreaState extends State<FormArea> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Container(
      padding: EdgeInsets.all(w * 0.02),
      child: Card(
        elevation: 5,
        child: Container(
          child: TextField(maxLines: null),
          decoration: BoxDecoration(
              color: Constant().white, borderRadius: BorderRadius.circular(50)),
          height: h * 0.5,
          width: w,
        ),
      ),
    );
  }
}
