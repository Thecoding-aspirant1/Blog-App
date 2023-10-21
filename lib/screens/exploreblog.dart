import 'package:flutter/material.dart';

class ExploreBlogs extends StatefulWidget {
  const ExploreBlogs({super.key});

  @override
  State<ExploreBlogs> createState() => _ExploreBlogsState();
}

class _ExploreBlogsState extends State<ExploreBlogs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('explore')),
    );
  }
}
