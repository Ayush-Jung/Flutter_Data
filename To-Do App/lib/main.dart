import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Provider/titleNotifier.dart';
import 'package:flutter_complete_guide/screens/Home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TitleNotifier();
      },
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.nunitoSansTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
