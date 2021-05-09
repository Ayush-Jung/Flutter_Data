import 'package:flutter/material.dart';
import 'package:set_wallpaper/widget/walpaper_design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: WallpaperDesign(),
    );
  }
}
